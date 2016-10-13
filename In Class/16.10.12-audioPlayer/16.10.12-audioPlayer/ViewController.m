//
//  ViewController.m
//  16.10.12-audioPlayer
//
//  Created by Alex Maguire on 10/12/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize path, player;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //Prep Audio player
    NSError *err;
    path = [[NSBundle mainBundle] pathForResource:@"03 Melt (feat. Hatsune Miku)" ofType:@"m4a"];
    player=[[AVAudioPlayer alloc]initWithContentsOfURL:[NSURL fileURLWithPath:path] error:&err];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
