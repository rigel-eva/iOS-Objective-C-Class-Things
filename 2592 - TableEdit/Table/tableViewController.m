//
//  tableViewController.m
//  Table
//
//  Created by jitin on 10/4/14.
//  Copyright (c) 2014 jitin. All rights reserved.
//

#import "tableViewController.h"

@interface tableViewController ()

@end

@implementation tableViewController

NSMutableArray *courses;    // visible to class methods

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // generate data to display on the table
    courses = [[NSMutableArray alloc] init];
    
    [courses addObject:@"CIS 101"];
    [courses addObject:@"CIS 102"];
    [courses addObject:@"CIS 103"];
    [courses addObject:@"CIS 104"];
    [courses addObject:@"CIS 105"];
    [courses addObject:@"CIS 106"];
    [courses addObject:@"CIS 107"];
    [courses addObject:@"CIS 108"];
    [courses addObject:@"CIS 109"];
    [courses addObject:@"CIS 110"];
    [courses addObject:@"CIS 111"];
    [courses addObject:@"CIS 112"];
    [courses addObject:@"CIS 113"];
    [courses addObject:@"CIS 114"];
    [courses addObject:@"CIS 115"];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark --------------
#pragma mark Required UITableViewDataSource Protocols

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"cell";
    
    UITableViewCell *cell = [ tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    // get reusable cell space
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    // set display content
    NSString *cellValue = [ courses objectAtIndex:indexPath.row];
    cell.textLabel.text =cellValue;
    
    NSLog(@"tableView:cellForRowAtIndexPath is returing %@", cell.textLabel.text);
    
    return cell;
    
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSLog(@"tableView:numberOfRowsInSection is returning %i", [courses count]);
    
    return [courses count];
    
}

#pragma mark ---------------
#pragma mark Optional UITableViewDataSource Protocols

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    return @"CIS Classes";
    
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    
    return @"at COD";
    
}

#pragma mark --------------
#pragma mark Optional UITableViewData Protocols

- (NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath
                                                                                   *)indexPath {
    NSLog(@"Row number %i ", [indexPath row]);
    if ([indexPath row] % 2) {
        return 2;
    }
    if ([indexPath row] % 3) {
        return 3;
    }
    return 1;
}

- (void) tableView:(UITableView *) tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Selected - %@", [courses
                             objectAtIndex:indexPath.row]);
}

@end
