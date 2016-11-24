//
//  ViewController.m
//  coreDataPlay-macOS
//
//  Created by Alex Maguire on 11/24/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "ViewController.h"
@implementation ViewController{
    coreDataHandler *data;
}
- (void)viewDidLoad {
    data=[[coreDataHandler alloc]init];
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
