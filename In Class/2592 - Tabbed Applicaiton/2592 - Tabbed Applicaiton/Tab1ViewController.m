//
//  ViewController.m
//  2592 - Tabbed Applicaiton
//
//  Created by Alex Maguire on 9/21/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "Tab1ViewController.h"

@interface Tab1ViewController ()

@end

@implementation Tab1ViewController
@synthesize textView;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"myText" ofType:@"txt"];//This is how we find a file ...
    textView.text=[NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];//And this is how we use a text file to act as a string!
    [textView setFont:[UIFont systemFontOfSize:16]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
