//
//  ViewController.m
//  16.10.26 - gesture
//
//  Created by Alex Maguire on 10/26/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "ViewController.h"
#import <math.h>
@interface ViewController ()

@end

@implementation ViewController
@synthesize imageView;
float lastScaleFactor;
NSArray *images;
int imageIndex;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //recognize tap
    //UITapGestureRecognizer *tapGesture=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapGesture:)];
    //tapGesture.numberOfTapsRequired=2;
   // [imageView addGestureRecognizer:tapGesture];

    //recognize pinch
    //UIPinchGestureRecognizer *pinchGesture=[[UIPinchGestureRecognizer alloc] initWithtarget:self action:@selector(handlePinch:)];
    //UIPinchGestureRecognizer *pinchGesture=[[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(handlePinch:)];
    //lastScaleFactor=1;
    //[imageView addGestureRecognizer:pinchGesture];
    //Doing setup for images
    imageIndex=0;
    images=[[NSArray alloc] initWithObjects:@"1299297179658.jpg",@"1299557075811.jpg",nil];
    //Right Swipe - which is default
    UISwipeGestureRecognizer *swipeGesture;
    swipeGesture=[[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipe:)];
    [imageView addGestureRecognizer:swipeGesture];
    UISwipeGestureRecognizer *lSwipeGesture;
    lSwipeGesture=[[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipe:)];
    lSwipeGesture.direction=UISwipeGestureRecognizerDirectionLeft;
    [imageView addGestureRecognizer:lSwipeGesture];
}
-(IBAction)handleTapGesture:(UITapGestureRecognizer *)sender{
    switch(sender.numberOfTouches){
        case 2:
            NSLog(@"Tap Tap");
            if(sender.view.contentMode==UIViewContentModeScaleAspectFit){
                sender.view.contentMode=UIViewContentModeCenter;
            }
            else{
                sender.view.contentMode=UIViewContentModeScaleAspectFit;
            }
            break;
        case 3:
            NSLog(@"Tap Tap Tap");
            imageView.transform=CGAffineTransformRotate(imageView.transform, M_PI);
            [UIView commitAnimations];
            break;

    }
}
-(IBAction)handleSecondTapGesture:(UITapGestureRecognizer*)sender{
}
-(IBAction)handlePinch:(UIPinchGestureRecognizer *)sender{
    CGFloat factor=[sender scale];
    NSLog(@"Pinched (oww) with a factor of %f",factor);
    if(factor>1){
        //zoom in
        sender.view.transform=CGAffineTransformMakeScale(lastScaleFactor+factor-1, lastScaleFactor+factor-1);
    }else{
        //zoom out
        sender.view.transform=CGAffineTransformMakeScale(lastScaleFactor*factor,factor);
    }
    if(sender.state==UIGestureRecognizerStateEnded){
        if(factor>1){
            lastScaleFactor+=(factor-1);
        }else{
            lastScaleFactor*=factor;
        }
    }
    [UIView commitAnimations];
    
}
-(IBAction)handleSwipe:(UISwipeGestureRecognizer *)sender{
    UISwipeGestureRecognizerDirection direction=sender.direction;
    switch(direction){
        case UISwipeGestureRecognizerDirectionLeft:
            NSLog(@"Swiped Left");
            imageIndex++;
            break;
        case UISwipeGestureRecognizerDirectionRight:
            NSLog(@"Swiped Right");
            imageIndex--;
            break;
    }
    imageIndex=(imageIndex<0)?([images count]-1):imageIndex%[images count];
    imageView.image=[UIImage imageNamed:images[imageIndex]];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
