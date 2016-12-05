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
    __weak IBOutlet UITextField *strEntry;
    __weak IBOutlet UITextField *strMod;
    __weak IBOutlet UITextField *dexEntry;
    __weak IBOutlet UITextField *dexMod;
    __weak IBOutlet UITextField *conEntry;
    __weak IBOutlet UITextField *conMod;
    __weak IBOutlet UITextField *intEntry;
    __weak IBOutlet UITextField *intMod;
    __weak IBOutlet UITextField *wisEntry;
    __weak IBOutlet UITextField *wisMod;
    __weak IBOutlet UITextField *chaEntry;
    __weak IBOutlet UITextField *chaMod;
}
@property (nonatomic) nonPlayerCharacter *toEdit;
-(IBAction)abilityFieldChanged:(id)sender;
@end
