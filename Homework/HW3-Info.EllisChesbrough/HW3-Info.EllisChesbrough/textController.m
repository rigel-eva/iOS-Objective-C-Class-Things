//
//  ViewController.m
//  HW3-Info.EllisChesbrough
//
//  Created by Alex Maguire on 11/4/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "textController.h"

@interface textController ()

@end

@implementation textController
@synthesize info;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *filePath=[[NSBundle mainBundle]pathForResource:@"info" ofType:@"txt"];
    info.text=[NSString stringWithContentsOfFile:filePath encoding:kCFStringEncodingUTF8 error:nil];
    info.editable=false;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
