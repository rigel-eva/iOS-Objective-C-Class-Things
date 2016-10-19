//
//  ViewController.h
//  19.10.16 - sqLiteDB
//
//  Created by Alex Maguire on 10/19/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <sqlite3.h>
@interface ViewController : UIViewController{
    sqlite3 *db;
}
-(NSString *)filePath;

@end

