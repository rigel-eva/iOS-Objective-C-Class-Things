//
//  ViewController.h
//  coreDataPlay-iOS
//
//  Created by Alex Maguire on 11/24/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "gameObjects.h"

@interface NPCDetailViewController : UIViewController{
    __weak IBOutlet UITextField *nameEntry;
    __weak IBOutlet UITextField *raceEntry;
    
}
@property (nonatomic) nonPlayerCharacter *toEdit;
@end
