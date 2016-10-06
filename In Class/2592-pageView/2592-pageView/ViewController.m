//
//  ViewController.m
//  2592-pageView
//
//  Created by Alex Maguire on 9/21/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize PageView;
@synthesize imageView0, imageView1,tempImageView,bgImageView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [imageView0 setImage:[UIImage imageNamed:@"Astral.jpg"]];
    tempImageView=imageView1;
    //make first image visible and hide the second
    [imageView0 setHidden:false];
    [imageView1 setHidden:true];
    //add event handler for the page control
    //[pageView addTarget:self action:@selector(pageTurning:) forControlEvents:UIControlEventValueChanged];//Alternate way of assigning a event controller
    
}
-(IBAction)pageTurning:(UIPageControl*)pageController{
    //get the page number you are turning to
    NSInteger nextPage=[pageController currentPage];
    switch(nextPage){
        case 0:
            [tempImageView setImage:[UIImage imageNamed:@"Astral.jpg"]];
            break;
        case 1:
            [tempImageView setImage:[UIImage imageNamed:@"Fey.jpg"]];
            break;
        case 2:
            [tempImageView setImage:[UIImage imageNamed:@"Titanic.jpg"]];
            break;
        case 3:
            [tempImageView setImage:[UIImage imageNamed:@"Holo.jpg"]];
            break;
            
    }
    //switch the two imageview views
    if(tempImageView.tag ==0){//imageView0
        tempImageView = imageView1;
        bgImageView=imageView0;
        
    }
    else{//imageView1
        tempImageView=imageView0;
        bgImageView=imageView1;
    }
    //Animate the two views
    [UIView beginAnimations:@"flipping view" context:nil];
    [UIView setAnimationDuration:1];//1sec
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:tempImageView cache:YES];
    [tempImageView setHidden:YES];
    [UIView commitAnimations];
    [UIView beginAnimations:@"flipping view" context:nil];
    [UIView setAnimationDuration:1];//1sec
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:bgImageView cache:YES];
    [bgImageView setHidden:NO];
    [UIView commitAnimations];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
