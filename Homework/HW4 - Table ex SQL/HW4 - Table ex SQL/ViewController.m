//
//  ViewController.m
//  HW4 - Table ex SQL
//
//  Created by Alex Maguire on 11/17/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
NSMutableArray *tableData;
- (void)viewDidLoad {
    [self openDB];
    [self getRows];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(NSString *)filePath{
    NSArray *paths=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentDir = [paths objectAtIndex:0];
    return [documentDir stringByAppendingPathComponent:@"databse.db"];
}
#pragma mark Database Methods
-(void)openDB{
    NSLog(@"%@", [[NSBundle mainBundle] pathForResource:@"database" ofType:@"db"] );
    if((sqlite3_open([[[NSBundle mainBundle] pathForResource:@"database" ofType:@"db"] UTF8String],&db))!=SQLITE_OK){
        sqlite3_close(db);
        NSLog(@"myDB.db: failed to open");
    }
    else{
    }
}
-(void)getRows{
    sqlite3_stmt *stmt;
    NSString * qryStmt=@"select * from monsters;";//This way we only get the row we are interested in
    if(sqlite3_prepare(db, [qryStmt UTF8String], -1, &stmt, nil)==SQLITE_OK){
    while(sqlite3_step(stmt)==SQLITE_ROW){
        char *name=(char *)sqlite3_column_text(stmt,0);
        [tableData addObject:[NSString stringWithFormat:@"%s",name]];
    }
  }
}
#pragma mark Table Methods
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSLog(@"numRowsInSectionr returning: %i",[tableData count]);
    return [tableData count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
  static NSString *cellIdentifier = @"cell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
  // get reusable cell space
  if (cell == nil) {
      cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
  }
  // set display content
  cell.textLabel.text=[tableData objectAtIndex:indexPath.row];
  return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
