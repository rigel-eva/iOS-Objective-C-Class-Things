//
//  ViewController.h
//  16.10.12-audioPlayer
//
//  Created by Alex Maguire on 10/12/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
@interface ViewController : UIViewController{
    AVAudioPlayer *player;
    NSTimer *timer;
    IBOutlet UIProgressView *avgVolume;
    IBOutlet UIProgressView *peakVolume;
    IBOutlet UIButton *playPauseButton;
    IBOutlet UISlider *volumeSlider;
    IBOutlet UISlider *playbackSlider;
    
}
@property (retain) AVAudioPlayer *player;
@property(retain) NSString *path;
-(IBAction)play:(id)sender;
-(IBAction)adjustTime:(id)sender;
-(IBAction)changeVolume:(id)sender;

@end

