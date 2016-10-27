//
//  ViewController.m
//  16.10.26-animate
//
//  Created by Alex Maguire on 10/26/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "ViewController.h"
#import <math.h>
@interface ViewController ()

@end

@implementation ViewController
@synthesize slider, imageView;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ballRadius=imageView.frame.size.width/2;
    //need a starting point to animate the image - could be any legit value
    delta=CGPointMake(4,4);
    timer=[NSTimer scheduledTimerWithTimeInterval:slider.value target:self selector:@selector(onTimer:) userInfo:nil repeats:YES];
    angle=0;
}
-(void)onTimer:(id)sender{

    //Set Animation parameters
    [UIView beginAnimations:@"myOwn" context:nil];
    [UIView setAnimationDuration:slider.value];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    //imageView.transform = CGAffineTransformMakeTranslation(translation.x, translation.y);
    /*//set up next timer call
    translation.x=translation.x+delta.x;
    translation.y=translation.y+delta.y;
    if((imageView.center.x+translation.x>self.view.bounds.size.width-ballRadius)||(imageView.center.x+translation.x<ballRadius)){
        delta.x= -delta.x;
    }
    if((imageView.center.y+translation.y>self.view.bounds.size.height-ballRadius)||(imageView.center.y+translation.y<ballRadius)){
        delta.y= -delta.y;
    }*/
    imageView.transform=CGAffineTransformMakeRotation(angle);
    [UIView commitAnimations];
    angle+=0.02;
    //full rotation is exactly waht you expect, 2 pi or 2 *3.1415926(using M_PI for ease of use...)
    if(angle>M_PI*2){
        angle=0;
    }
    imageView.center=CGPointMake(imageView.center.x+delta.x, imageView.center.y +delta.y);
     if(imageView.center.x>self.view.bounds.size.width -ballRadius||
        imageView.center.x>self.view.bounds.size.width-ballRadius){
         delta.x=-delta.x;
     }
     if(imageView.center.y>self.view.bounds.size.height-ballRadius||imageView.center.y<ballRadius){
         delta.y=-delta.y;
     }
    
}
-(IBAction)sliderMoved:(id)sender{
    //cancel timer and get a new timer with new slider value
    [timer invalidate];
    timer = [NSTimer scheduledTimerWithTimeInterval:slider.value target:self selector:@selector(onTimer:) userInfo:nil repeats:YES];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
     //Dispose of any resources that can be recreated.
}


@end
