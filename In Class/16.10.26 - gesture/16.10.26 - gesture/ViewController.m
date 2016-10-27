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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //recognize tap
    UITapGestureRecognizer *tapGesture=[[UITapGestureRecognizer alloc]
                                        initWithTarget:self action:@selector(handleTapGesture:)];
    tapGesture.numberOfTapsRequired=2;
    [imageView addGestureRecognizer:tapGesture];
    UITapGestureRecognizer *tapGesture2=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSecondTapGesture:)];
    tapGesture2.numberOfTapsRequired=3;
    [imageView addGestureRecognizer:tapGesture2];
}
-(IBAction)handleTapGesture:(UITapGestureRecognizer *)sender{
    NSLog(@"Tap Tap");
    if(sender.view.contentMode==UIViewContentModeScaleAspectFit){
        sender.view.contentMode=UIViewContentModeCenter;
    }
    else{
        sender.view.contentMode=UIViewContentModeScaleAspectFit;
    }
}
-(IBAction)handleSecondTapGesture:(UITapGestureRecognizer*)sender{
    NSLog(@"Tap Tap Tap");
    imageView.transform=CGAffineTransformRotate(imageView.transform, M_PI);
    [UIView commitAnimations];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
