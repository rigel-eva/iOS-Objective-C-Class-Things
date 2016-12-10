//
//  summarySkillCell.m
//  coreDataPlay
//
//  Created by Alex Maguire on 12/7/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "summarySkillCell.h"

@implementation summarySkillCell
@synthesize toView;
@synthesize skillReference;
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    [self updateCell];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    NSLog(@"%@",skillReference.name);
    // Configure the view for the selected state
}
-(bool)updateCell{
    if(toView!=nil&&skillReference!=nil){//If everything we need is here ...
        //Let's total our values ...
        NSInteger total=skillReference.modifier+skillReference.ranks;
        switch (skillReference.skillType) {
            case strength:
                total+=toView.strengthModifier;
                break;
            case dexterity:
                total+=toView.dexterityModifier;
                break;
            case constitution:
                total+=toView.constitutionModifier;
                break;
            case intellegence:
                total+=toView.intellegenceModifier;
                break;
            case wisdom:
                total+=toView.wisdomModifier;
                break;
            case charisma:
                total+=toView.charismaModifier;
                break;
            case none:
                break;
        }
        //Then let's write to the cell
        skillNameField.text=skillReference.name;
        skillTotalField.text=[NSString stringWithFormat:@"%ld",total];
    }
    return false;//otherwise return false.
}
@end
