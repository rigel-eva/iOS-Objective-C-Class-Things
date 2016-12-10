//
//  NPCDetailSkill-AbilitySummary.h
//  coreDataPlay
//
//  Created by Alex Maguire on 12/7/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "gameObject.h"
#include "summarySkillCell.h"
@interface NPCDetailSkill_AbilitySummary : UIViewController<UITableViewDelegate, UITableViewDataSource>{
    IBOutlet UISegmentedControl *switcher;
    IBOutlet UITableView *listing;
}
@property (nonatomic, weak) gameObject* toView;
-(void)refreshData;
@end
