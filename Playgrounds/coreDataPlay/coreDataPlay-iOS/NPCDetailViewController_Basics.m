//
//  ViewController.m
//  coreDataPlay-iOS
//
//  Created by Alex Maguire on 11/24/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "NPCDetailViewController_Basics.h"
#import "testFunctions.h"
#import "NPCDetailViewControllerController_Skills.h"
#import "NPCDetailViewController_Abilities.h"
#import "NPCDetailSkill-AbilitySummary.h"
@implementation NPCDetailViewController_Basics{
}
@synthesize toEdit;
- (void)viewDidLoad {
    [super viewDidLoad];
    toEdit=[testFunctions generateTestObject];//Just for right now ... we kinda want to get our view up and running
    nameEntry.text=toEdit.name;
    raceEntry.text=toEdit.race;
    strEntry.text=[NSString stringWithFormat:@"%ld",toEdit.strength];
    dexEntry.text=[NSString stringWithFormat:@"%ld",toEdit.dexterity];
    conEntry.text=[NSString stringWithFormat:@"%ld",toEdit.constitution];
    intEntry.text=[NSString stringWithFormat:@"%ld",toEdit.intellegence];
    wisEntry.text=[NSString stringWithFormat:@"%ld",toEdit.wisdom];
    chaEntry.text=[NSString stringWithFormat:@"%ld",toEdit.charisma];
    [self setModifiers];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)setModifiers{
    strMod.text=[NSString stringWithFormat:@"%ld",toEdit.strengthModifier];
    dexMod.text=[NSString stringWithFormat:@"%ld",toEdit.dexterityModifier];
    conMod.text=[NSString stringWithFormat:@"%ld",toEdit.constitutionModifier];
    intMod.text=[NSString stringWithFormat:@"%ld",toEdit.intellegenceModifier];
    wisMod.text=[NSString stringWithFormat:@"%ld",toEdit.wisdomModifier];
    chaMod.text=[NSString stringWithFormat:@"%ld",toEdit.charismaModifier];
}
-(IBAction)abilityFieldChanged:(id)sender{
    //Update the Entry we have to edit
    toEdit.strength=[strEntry.text intValue];
    toEdit.dexterity=[dexEntry.text intValue];
    toEdit.constitution=[conEntry.text intValue];
    toEdit.intellegence=[intEntry.text intValue];//Uh ... well that name is unfortunate ...
    toEdit.wisdom=[wisEntry.text intValue];
    toEdit.charisma=[chaEntry.text intValue];
    //Update the Modifiers
    [self setModifiers];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier] isEqualToString:@"summary"]) {
        NPCDetailSkill_AbilitySummary* summary=segue.destinationViewController;
        summary.toView=toEdit;
    }
}
@end
