//
//  ViewController.m
//  16.10.12-playVideo
//
//  Created by Alex Maguire on 10/12/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *url=[[NSBundle mainBundle] pathForResource:@"PipeDream" ofType:@"m4v"]
    player=[[MPMoviePlayerController alloc] initWithContentURL:[NSURL fileURLWithPath:url]];
    [NSNotificationCenter defaultCenter];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
