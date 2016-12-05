//
//  ViewController.m
//  coreDataPlay-iOS
//
//  Created by Alex Maguire on 11/24/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "NPCDetailViewController_Basics.h"
#import "testFunctions.h"
@implementation NPCDetailViewController_Basics
@synthesize toEdit;
- (void)viewDidLoad {
    [super viewDidLoad];
    toEdit=[testFunctions generateTestObject];//Just for right now ... we kinda want to get our view up and running
    nameEntry.text=toEdit.name;
    raceEntry.text=toEdit.race;
    // Do any additional setup after loading the view, typically from a nib.
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
    strMod.text=[NSString stringWithFormat:@"%d",toEdit.strengthModifier];
    dexMod.text=[NSString stringWithFormat:@"%d",toEdit.dexterityModifier];
    conMod.text=[NSString stringWithFormat:@"%d",toEdit.constitutionModifier];
    intMod.text=[NSString stringWithFormat:@"%d",toEdit.intellegenceModifier];
    wisMod.text=[NSString stringWithFormat:@"%d",toEdit.wisdomModifier];
    chaMod.text=[NSString stringWithFormat:@"%d",toEdit.charismaModifier];
    //Update any relevant Skills n' stuff
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
