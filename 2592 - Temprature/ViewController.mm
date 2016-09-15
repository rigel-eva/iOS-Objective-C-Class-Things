//
//  ViewController.m
//  2592 - Temprature
//
//  Created by student on 9/14/16.
//  Copyright © 2016 sir_rigel. All rights reserved.
//

#import "ViewController.hh"
#import "tempConvert.hpp"
@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)tempConvert:(id)sender{
    if([sender isEqual:celciusField]){
        farenheightField.text=[NSString stringWithFormat:@"%f",celToFar([celciusField.text doubleValue])];
    }else{
        celciusField.text=[NSString stringWithFormat:@"%f",farToCel([farenheightField.text doubleValue])];
    }
}
@end
