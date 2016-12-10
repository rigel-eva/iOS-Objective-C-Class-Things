//
//  NPCDetailViewControllerController_Skills.h
//  coreDataPlay
//
//  Created by Alex Maguire on 12/5/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "nonPlayerCharacter.h"
@interface NPCDetailViewControllerController_Skills : UITableViewController<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic,weak) nonPlayerCharacter *toEdit;
@end
