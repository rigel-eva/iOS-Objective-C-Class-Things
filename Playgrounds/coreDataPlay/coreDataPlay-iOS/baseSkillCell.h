//
//  skillCell.h
//  coreDataPlay
//
//  Created by Alex Maguire on 12/5/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "gameObject.h"
@interface baseSkillCell : UITableViewCell{
    //Keep this in mind next time: MAKE SURE THAT YOU SET UP THE IBOUTLETS FOR THE FILE NAMED "something something something" NOT FILE OWNER!!!!
    IBOutlet UITextField *skillNameField;
    IBOutlet UITextField *skillTotalField;
    IBOutlet UITextField *skillRankField;
    IBOutlet UILabel *abilityModifierField;
    IBOutlet UITextField *skillModifierField;
    IBOutlet UIButton *abilityField;
    
}
//Things we should allow to be editied here:
// Skill Name: Because well ... we have no idea what our ability will be ...
//nonPlayerCharacter: Because we need to know what we are editing ...
@property (nonatomic) skill* skillReference;
@property (nonatomic) gameObject* toEdit;
- (void)refreshSkillInfo;
@end
