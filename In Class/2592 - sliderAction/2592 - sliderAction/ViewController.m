//
//  ViewController.m
//  2592 - sliderAction
//
//  Created by student on 9/14/16.
//  Copyright © 2016 sir_rigel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize sliderA, sliderB;

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"View loaded, sliders should be visible ...");
    // Do any additional setup after loading the view, typically from a nib.
    //sliderA.continuous=false;//Semi Useful if we don't want to continuosly trigger... but eh ...
    //sliderB.continuous=false;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sliderA_changed:(id)sender {
    sliderB.value=1-sliderA.value;
}
- (IBAction)sliderB_changed:(id)sender {
    sliderA.value=1-sliderB.value;
    
}
- (IBAction)slidersMoved:(id)sender{
    NSLog(@"Slider A Value: %f\nSlider B Value: %f",sliderA.value,sliderB.value);
}

@end
