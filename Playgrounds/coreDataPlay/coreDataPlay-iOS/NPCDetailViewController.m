//
//  ViewController.m
//  coreDataPlay-iOS
//
//  Created by Alex Maguire on 11/24/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "NPCDetailViewController.h"
#import "testFunctions.h"
@interface NPCDetailViewController ()

@end

@implementation NPCDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _toEdit=[testFunctions generateTestObject];
    nameEntry.text=_toEdit.name;
    raceEntry.text=_toEdit.race;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
