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
-(UITableViewCell* )tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifer=@"cell";//be sure that cell indentifier in SB is set same
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIdentifer];
    if(cell==nil){
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifer];
    }
    //Configure the cell.
    
    //get faculty in the section
    NSString *myFaculty = [self.faculty objectAtIndex:[indexPath section]];
    
    //Courses within the Faculty
    NSArray *facualtyCourses=[self.cod objectForKey:myFaculty];
    cell.textLabel.text=[facualtyCourses objectAtIndex:[indexPath row]];
    return cell;
}
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return [faculty objectAtIndex:section];
}
-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    NSString *myFaculty=[faculty objectAtIndex:section];
    NSArray *facultyCourses=[cod objectForKey:myFaculty];
    NSString *myFooterText=[NSString stringWithFormat:@"%i Courses",[facultyCourses count]];
    return myFooterText;
}
@end
