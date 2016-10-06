//
//  ViewController.h
//  2592 - webView
//
//  Created by Alex Maguire on 9/21/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    IBOutlet UIWebView *webView;
    IBOutlet UITextField *textField;
}
@property (nonatomic, retain) UIWebView *webView;
@property (nonatomic, retain) UITextField *textField;
- (IBAction)LoadPage:(id)sender;
@end

