//
//  TabBarViewController.m
//  2592 - Table From Property List
//
//  Created by Alex Maguire on 10/5/16.
//  Copyright © 2016 Alex Maguire. All rights reserved.
//

#import "TableDetailViewController.h"

@interface TableDetailViewController ()
@end

@implementation TableDetailViewController
@synthesize inLabelText, inRow, inSection;
@synthesize outLabel,showRow,showSection;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    outLabel.text=inLabelText;
    showRow.text=[NSString stringWithFormat:@"Row Passed to this VC: %li",(long)inRow];
    showSection.text=[NSString stringWithFormat:@"Section Passed to this VC %li",(long)inSection];
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
