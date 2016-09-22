//
//  Tab2ViewController.m
//  2592 - Tabbed Applicaiton
//
//  Created by Alex Maguire on 9/21/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "Tab2ViewController.h"

@interface Tab2ViewController ()

@end

@implementation Tab2ViewController
@synthesize imageView2;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //Initilize image to display
    [imageView2 setImage:[UIImage imageNamed:@"1299557075811.jpg"]];
    //Make it visible
    [imageView2 setHidden:NO];//Redudent ... but still a good idea.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
