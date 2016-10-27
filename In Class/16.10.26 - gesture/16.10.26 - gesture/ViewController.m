//
//  ViewController.m
//  16.10.26 - gesture
//
//  Created by Alex Maguire on 10/26/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "ViewController.h"

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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
