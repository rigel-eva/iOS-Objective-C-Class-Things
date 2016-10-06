//
//  ViewController.h
//  2592 - sliderAction
//
//  Created by student on 9/14/16.
//  Copyright © 2016 sir_rigel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    IBOutlet UISlider *sliderA;
    IBOutlet UISlider *sliderB;
}
@property (nonatomic, retain) UISlider *sliderA;
@property (nonatomic, retain) UISlider *sliderB;
- (IBAction)sliderA_changed:(id)sender;
- (IBAction)sliderB_changed:(id)sender;
@end

