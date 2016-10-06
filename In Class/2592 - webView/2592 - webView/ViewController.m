//
//  ViewController.m
//  2592 - webView
//
//  Created by Alex Maguire on 9/21/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize webView, textField;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)LoadPage:(id)sender{
    NSLog(@"Value of boxText is %@",textField.text);
    NSURL *url=[NSURL URLWithString:textField.text];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
    //[webView loadRequest:[NSURLRequest requestWithURL:[NSURLRequest:textField.text]]];//Way more messy way of doing things...
    
}

@end
