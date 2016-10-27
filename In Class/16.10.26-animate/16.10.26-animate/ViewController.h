//
//  ViewController.h
//  16.10.26-animate
//
//  Created by Alex Maguire on 10/26/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    IBOutlet UIImageView *imageView;
    IBOutlet UISlider *slider;
    CGPoint delta;
    CGPoint translation;
    NSTimer *timer;
    float ballRadius;
}
@property (nonatomic,retain)UIImageView *imageView;
@property (nonatomic,retain)UISlider *slider;
-(IBAction)sliderMoved:(id)sender;
@end

