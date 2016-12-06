//
//  skillCell.m
//  coreDataPlay
//
//  Created by Alex Maguire on 12/5/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "baseSkillCell.h"

@implementation baseSkillCell{
    NSString *skillName;
}
@synthesize toEdit;
@synthesize skillName=skillName;
-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //modifierField.text=@"0";
    //abilityModField.text=@"0";
    //abilityField.titleLabel.text=@"N/A";
    //totalField.text=@"0";
    return self;
}
-(NSString*)getSkillName{
    return skillName;
}
-(void)setSkillName:(NSString*)name{
    int skillTotal=0;
    skillName=name;
    skillNameField.text=name;
    NSArray *skillInfo=[toEdit.skills objectForKey:name];
    NSNumber *skillAbility=skillInfo[0];
    NSNumber *skillModifier=skillInfo[1];
    NSInteger abilityModifier=0;
    skillModifierField.text=[NSString stringWithFormat:@"%ld",(long)skillModifier.integerValue];//Well this is ungodly unreadable ... essentially we are fetching what we currently have our skill name set to.
    skillTotal+=skillModifier.integerValue;
    NSString *abilityName;
    switch(skillAbility.integerValue){
        case 0:
            abilityName=@"Str";
            abilityModifier=toEdit.strengthModifier;
            break;
        case 1:
            abilityName=@"Dex";
            abilityModifier=toEdit.dexterityModifier;
            break;
        case 2:
            abilityName=@"Con";
            abilityModifier=toEdit.constitutionModifier;
            break;
        case 3:
            abilityName=@"Int";
            abilityModifier=toEdit.intellegenceModifier;
            break;
        case 4:
            abilityName=@"Wis";
            abilityModifier=toEdit.wisdomModifier;
            break;
        case 5:
            abilityName=@"Cha";
            abilityModifier=toEdit.charismaModifier;
            break;
    }
    if(abilityName==nil){
        abilityName=@"N/A";
        abilityModifierField.text=@"—";
    }else{
        abilityModifierField.text=[NSString stringWithFormat:@"%ld",abilityModifier];
        skillTotal+=(int)abilityModifier;
    }
    [abilityField setTitle:abilityName forState:UIControlStateNormal];
    skillTotalField.text=[NSString stringWithFormat:@"%d",skillTotal];
}
@end
