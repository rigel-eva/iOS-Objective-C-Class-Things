//
//  ViewController.h
//  2592-pageView
//
//  Created by Alex Maguire on 9/21/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    IBOutlet UIPageViewControl *pageView;
    IBOutlet UIImageView *imageView0;
    IBOutlet UIImageView *imageView1;
    UIImageView *tempImageView, *bgImageView;
}
@property (nonatomic,retain) UIPageControl *PageView;
@property (nonatomic, retain) UIImageView *imageView0, *imageView1,*tempImageView, *bgImageView;

@end

