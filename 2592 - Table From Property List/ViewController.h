//
//  ViewController.h
//  2592 - Table From Property List
//
//  Created by Alex Maguire on 9/28/16.
//  Copyright © 2016 Alex Maguire. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>{
    NSDictionary *cod;
    NSArray *faculty;
}
@property (nonatomic,retain) NSDictionary *cod;
@property (nonatomic,retain) NSArray *faculty;
@end

