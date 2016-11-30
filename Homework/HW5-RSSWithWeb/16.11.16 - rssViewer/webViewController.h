//
//  webViewController.h
//  HW5-RSS.WithWeb
//
//  Created by Alex Maguire on 11/16/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface webViewController : UIViewController{
    NSURL *url;
#warning something odd is going on with the web view ... you should probably double check that ...
    IBOutlet UIWebView *webView;
}
@property (nonnull, retain) NSURL *url;
@property (nonatomic, retain) UIWebView *webView;
@end
