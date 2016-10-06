//
//  ViewController.m
//  2592 - Table From Property List
//
//  Created by Alex Maguire on 9/28/16.
//  Copyright © 2016 Alex Maguire. All rights reserved.
//

#import "ViewController.h"
#import "TableDetailViewController.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize cod,faculty, myTableView;
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
    NSString *myFooterText=[NSString stringWithFormat:@"%lu Courses",[[cod objectForKey:[faculty objectAtIndex:section]] count]];
    return myFooterText;
}
#pragma mark segue
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self performSegueWithIdentifier:@"tableDetail" sender:self];
    
}
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([[segue identifier] isEqualToString:@"tableDetail"]){//If we are dealing with the segue that we are expecting ...
        //First, let's get to know who we are passing this stuff to ... get their name, address ... things that make shipping easier
        TableDetailViewController *detailVC=[segue destinationViewController];//get the class that we are pushing
        //Next, let's get the stuff from our end, and get ready to pack it up and send it off.
        NSIndexPath *indexPath=[self.myTableView indexPathForSelectedRow];
        //Let's get the row Number from this next ...
        NSString *myFaculty = [self.faculty objectAtIndex:[indexPath section]];
        NSArray *facultyCourses=[self.cod objectForKey:myFaculty];
        NSInteger row=[indexPath row];
        NSInteger section=[indexPath section];
        //now let's pack this stuff up and ship it out
        detailVC.inLabelText = [facultyCourses objectAtIndex:[indexPath row]];
        detailVC.inRow = row;
        detailVC.inSection = section;
    }
}
@end
