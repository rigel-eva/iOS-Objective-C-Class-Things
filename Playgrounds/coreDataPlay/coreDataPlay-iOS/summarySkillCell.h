//
//  summarySkillCell.h
//  coreDataPlay
//
//  Created by Alex Maguire on 12/7/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "gameObject.h"
@interface summarySkillCell : UITableViewCell{
    IBOutlet UILabel *skillNameField;
    IBOutlet UILabel *skillTotalField;
}
@property (nonatomic) gameObject* toView;
@property (nonatomic) skill* skillReference;
-(bool)updateCell;
@end
