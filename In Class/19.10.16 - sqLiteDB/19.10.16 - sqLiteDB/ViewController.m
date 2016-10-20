//
//  ViewController.m
//  19.10.16 - sqLiteDB
//
//  Created by Alex Maguire on 10/19/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self openDB];
    [self createTableNamed:@"Faculty" withField1:@"Course" withField2:@"Name"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSString *)filePath{
    NSArray *paths=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentDir = [paths objectAtIndex:0];
    return [documentDir stringByAppendingPathComponent:@"myDB.db"];
}
-(void)openDB{
    if((sqlite3_open([[self filePath] UTF8String],&db))!=SQLITE_OK){
        sqlite3_close(db);
        NSLog(@"myDB.db failed ot open");
    }
    else{
        NSLog(@"myDB.db successfuly opened");
    }
}
-(void) createTableNamed:(NSString *)tableName withField1:(NSString *)field1 withField2:(NSString *)field2{
    char *err;
    //NO LINE BREAKS FOR THIS STATEMENT
    NSString *sqlStmt=[NSString stringWithFormat:@"CREATE TABLE IF NOT EXISTS '%@' ('%@' TEXT PRIMARY KEY, '%@' TEXT);", tableName,field1,field2];
    if(sqlite3_exec(db, [sqlStmt UTF8String], NULL,NULL, &err)!=SQLITE_OK){
        sqlite3_close(db);
        NSLog(@"Failed to execute table create");
    }
}
@end
