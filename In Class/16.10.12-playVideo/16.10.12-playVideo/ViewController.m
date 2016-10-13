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
    NSString *url=[[NSBundle mainBundle] pathForResource:@"Pipe_Dream_by_AniMusic_176674_Pipe_Dream_1" ofType:@"m4v"];//getting the path to our movie
    player=[[MPMoviePlayerController alloc] initWithContentURL:[NSURL fileURLWithPath:url]];//initilizing movie player
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(movieFinishedCallBack:) name:MPMoviePlayerPlaybackDidFinishNotification object:player];//Adds an event handler to the movie player.
    player.view.frame=CGRectMake(10,10,300,300);//seting the size of the player
    [self.view addSubview:player.view];//adding the player to the main view
    //play movie
    [player play];//Play dat movie
    
}
-(void)movieFinishedCallBack:(NSNotification *)aNotification{
    MPMoviePlayerController *moviePlayer=[aNotification object];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:MPMoviePlayerPlaybackDidFinishNotification object:moviePlayer];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
