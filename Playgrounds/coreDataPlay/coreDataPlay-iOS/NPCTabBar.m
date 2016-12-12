//
//  NPCTabBar.m
//  coreDataPlay
//
//  Created by Alex Maguire on 12/9/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "NPCTabBar.h"
#import "NPCDetailViewController_basics.h"
#import "NPCDetailViewControllerController_Skills.h"
#import "NPCDetailViewController_Abilities.h"
#import "testFunctions.h"
@interface NPCTabBar ()

@end

@implementation NPCTabBar
@synthesize toEdit;
-(id)init{
    return [super init];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.delegate=self;//Might as well set ourself as the delegate ... because ... why not ...
    //Set up our view controllers before they show up!
    [self updateToEdit];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)updateToEdit{
    //Let's Grab the current view controller if we have one ...
    UIViewController* viewController=self.selectedViewController;
    if([viewController isKindOfClass:[NPCDetailViewController_Basics class]]){
        NPCDetailViewController_Basics* basics=(NPCDetailViewController_Basics*)viewController;
        toEdit=basics.toEdit;
    }else if([viewController isKindOfClass:[NPCDetailViewControllerController_Skills class]]){
        NPCDetailViewControllerController_Skills* skills=(NPCDetailViewControllerController_Skills*) viewController;
        toEdit=skills.toEdit;
    }else if([viewController isKindOfClass:[NPCDetailViewController_Abilities class]]){
        NPCDetailViewController_Abilities* abilities=(NPCDetailViewController_Abilities*) viewController;
        toEdit=abilities.toEdit;
    }
    //Then let's update each view controller!
    for(int i=0; i<self.viewControllers.count; i++){
        UIViewController* viewController=[self.viewControllers objectAtIndex:i];
        if([viewController isKindOfClass:[NPCDetailViewController_Basics class]]){
            NPCDetailViewController_Basics* basics=(NPCDetailViewController_Basics*)viewController;
            basics.toEdit=toEdit;
        }else if([viewController isKindOfClass:[NPCDetailViewControllerController_Skills class]]){
            NPCDetailViewControllerController_Skills* skills=(NPCDetailViewControllerController_Skills*) viewController;
            skills.toEdit=toEdit;
        }else if([viewController isKindOfClass:[NPCDetailViewController_Abilities class]]){
            NPCDetailViewController_Abilities* abilities=(NPCDetailViewController_Abilities*) viewController;
            abilities.toEdit=toEdit;
        }
    }
}
- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController{
    [self updateToEdit];
    return true;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
