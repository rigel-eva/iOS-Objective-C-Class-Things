//
//  imageViewController.m
//  HW3-Info.EllisChesbrough
//
//  Created by Alex Maguire on 11/5/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "imageController.h"
                                                                                                    
@implementation imageController
@synthesize image;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [image setHidden:NO];
    if([self.title isEqual:@"map"]){
        [image setImage:[UIImage imageNamed:@"SewerSystemplansfrom1857_zps4eb8ca5e.jpg"]];
    }else if([self.title isEqual:@"portrait"]){
        [image setImage:[UIImage imageNamed:@"Chesbrough portrait.jpg"]];
    }
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
