//
//  ViewController.m
//  2592 - Table From Property List
//
//  Created by Alex Maguire on 9/28/16.
//  Copyright © 2016 Alex Maguire. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize cod,faculty;
#pragma mark standard setup
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //Let's get that plist into memory, shall we?
    NSString *path=[[NSBundle mainBundle]pathForResource:@"courses" ofType:@"plist"];
    NSDictionary *dataDictonary=[[NSDictionary alloc] initWithContentsOfFile:path];
    self.cod=dataDictonary;
    self.faculty=[self.cod allKeys];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark tableView dataSource required protocols
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return faculty.count;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return[[self.cod objectForKey:[self.faculty objectAtIndex:section]]count];
}
@end
