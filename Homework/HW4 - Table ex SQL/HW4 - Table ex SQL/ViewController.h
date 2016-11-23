//
//  ViewController.h
//  HW4 - Table ex SQL
//
//  Created by Alex Maguire on 11/17/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <sqlite3.h>
@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>{
    IBOutlet UITableView *table;
    sqlite3 *db;
}
@property (nonatomic, retain) UITableView *  stable;

@end
