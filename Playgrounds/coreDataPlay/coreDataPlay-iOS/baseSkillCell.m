//
//  skillCell.m
//  coreDataPlay
//
//  Created by Alex Maguire on 12/5/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "baseSkillCell.h"

@implementation baseSkillCell{
}
@synthesize skillReference;
@synthesize toEdit;
-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //modifierField.text=@"0";
    //abilityModField.text=@"0";
    //abilityField.titleLabel.text=@"N/A";
    //totalField.text=@"0";
    return self;
}
- (void)refreshSkillInfo{
    if(toEdit!=nil&&skillReference!=nil){
        //Doing the background stuff
        NSInteger total=skillReference.modifier+skillReference.ranks;//To contain the total for what we are editing
        NSString *abilityShorthand=@"";
        NSInteger abilityModifier=0;
        switch (skillReference.skillType){
            case strength:
                abilityModifier=toEdit.strengthModifier;
                abilityShorthand=@"Str:";
                break;
            case dexterity:
                abilityModifier=toEdit.dexterityModifier;
                abilityShorthand=@"Dex:";
                break;
            case constitution:
                abilityModifier=toEdit.constitutionModifier;
                abilityShorthand=@"Con:";
                break;
            case intellegence:
                abilityModifier=toEdit.intellegenceModifier;
                abilityShorthand=@"Int:";
                break;
            case wisdom:
                abilityModifier=toEdit.wisdomModifier;
                abilityShorthand=@"Wis:";
                break;
            case charisma:
                abilityModifier=toEdit.charismaModifier;
                abilityShorthand=@"Cha:";
                break;
            case none:
                abilityShorthand=@"N/A";
                break;
        }
        total+=abilityModifier;
        //Setting the visibal stuff on the cell now...
        skillNameField.text=skillReference.name;
        [abilityField setTitle:abilityShorthand forState:UIControlStateNormal];
        abilityModifierField.text=[NSString stringWithFormat:@"%ld",abilityModifier];
        if(skillReference.ranks>0){
            skillRankField.text=[NSString stringWithFormat:@"%ld", skillReference.ranks];
        }else{
            skillRankField.text=nil;
        }
        if(skillReference.modifier==0){
            skillModifierField.text=nil;
        }else{
            skillModifierField.text=[NSString stringWithFormat:@"%ld", skillReference.modifier];
        }
        skillTotalField.text=[NSString stringWithFormat:@"%ld",total];
    }
}
- (IBAction)changedModifier:(id)sender {
    if([sender isEqual:skillRankField]){
        skillReference.ranks=skillRankField.text.integerValue;
        
    }else if([sender isEqual:skillModifierField]){
        skillReference.modifier=skillModifierField.text.integerValue;
    }
    [self refreshSkillInfo];
}
@end
