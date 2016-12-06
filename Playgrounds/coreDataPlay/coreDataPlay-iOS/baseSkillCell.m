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
    NSInteger abilityModifier;
    NSNumber *skillModifier;
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
    
}
- (IBAction)changedModifier:(id)sender {
}
@end
