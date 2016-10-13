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
    path = [[NSBundle mainBundle] pathForResource:@"HMB1936" ofType:@"mp3"];
    player=[[AVAudioPlayer alloc]initWithContentsOfURL:[NSURL fileURLWithPath:path] error:&err];
    if(!player){
        NSLog(@"viewDidLoad: error - %@",[err localizedDescription]);
        NSLog(@"viewDidLoad: faluerReason - %@",[err localizedFailureReason]);
        NSLog(@"viewDidLoad: recoveryOptions - %@", [err localizedRecoveryOptions]);
        NSLog(@"viewDidLoad: recoverySuggestions - %@", [err localizedRecoverySuggestion]);
    }
    [player prepareToPlay];
    player.meteringEnabled=YES;
    avgVolume.progress=0.0f;
    peakVolume.progress=0.0f;
}
-(IBAction)play:(id)sender{
    static BOOL isFirstPush = YES;//set up UI Update Timer only on first push
    if(isFirstPush){
        timer=[NSTimer scheduledTimerWithTimeInterval:0.01
                                               target:self
                                             selector:@selector(updateUI:)
                                             userInfo:nil
                                              repeats:YES];//Sets up a timer to trigger updateUI every centisecond
    }
    if([playPauseButton.currentTitle isEqualToString:@"Play"]){
        volumeSlider.value=player.volume;
        volumeSlider.enabled=YES;
        //switch label text
        [playPauseButton setTitle:@"Pause" forState:UIControlStateNormal];
        [playPauseButton setEnabled:YES];
        [player play];
    }else if([playPauseButton.currentTitle isEqualToString:@"Pause"]){
        //switch label text
        [playPauseButton setTitle:@"Play" forState:UIControlStateNormal];
        [playPauseButton setEnabled:YES];
        [player pause];
    }
}
-(void)updateUI: (id) sender{
    [player updateMeters];
    float avg=-1*[player averagePowerForChannel:0];
    float peak=-1*[player peakPowerForChannel:0];
    avgVolume.progress=avg/20;
    peakVolume.progress=peak/20;
    NSLog(@"Avg %f\navgProgress %f\nPeak %f\n,peakProgress%f\n",avg,peak,avgVolume.progress,peakVolume.progress);
}
-(IBAction)changeVolume:(id)sender{
    player.volume=volumeSlider.value;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
