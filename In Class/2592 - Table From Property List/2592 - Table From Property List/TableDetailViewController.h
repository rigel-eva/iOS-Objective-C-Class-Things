//
//  TabBarViewController.h
//  2592 - Table From Property List
//
//  Created by Alex Maguire on 10/5/16.
//  Copyright © 2016 Alex Maguire. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableDetailViewController : UIViewController
@property (strong,nonatomic) NSString *inLabelText;
@property (nonatomic) NSInteger inRow;
@property (nonatomic) NSInteger inSection;
@property (strong, nonatomic) IBOutlet UILabel *outLabel;
@property (strong, nonatomic) IBOutlet UILabel *showRow;
@property (strong, nonatomic) IBOutlet UILabel *showSection;

@end
