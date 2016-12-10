//
//  NPCTabBar.h
//  coreDataPlay
//
//  Created by Alex Maguire on 12/9/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "nonPlayerCharacter.h"

@interface NPCTabBar : UITabBarController <UITabBarDelegate>
@property (nonatomic) nonPlayerCharacter* toEdit;
@end
