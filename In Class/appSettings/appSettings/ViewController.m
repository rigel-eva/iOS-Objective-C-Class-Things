//
//  ViewController.m
//  appSettings
//
//  Created by student on 11/2/16.
//  Copyright © 2016 student. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize username, password,favoriteColor;
NSMutableArray *colors;
NSString *favoriteColorSelector;
-(IBAction)doneEditing:(id)sender{
    [sender resignFirstResponder];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    colors=[[NSMutableArray alloc]init];
    [colors addObject:@"Red"];
    [colors addObject:@"White"];
    [colors addObject:@"Blue"];
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [colors count];
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [colors objectAtIndex:row];
}
-(IBAction)loadSettings:(id)sender{
    NSUserDefaults *defaults=[NSUserDefaults standardUserDefaults];
    username.text=[defaults objectForKey:@"username"];
    password.text=[defaults objectForKey:@"password"];
    favoriteColorSelector=[[NSString alloc]initWithString:[defaults objectForKey:@"color"]];
    unsigned long selIndex=[colors indexOfObject:favoriteColorSelector];
    [favoriteColor selectRow:selIndex inComponent:0 animated:YES];
    
}
-(IBAction)saveSettings:(id)sender{
    NSUserDefaults *defaults=[NSUserDefaults standardUserDefaults];
    [defaults setObject:username.text forKey:@"username"];
    [defaults setObject:password.text forKey:@"password"];
    [defaults setObject:favoriteColorSelector forKey: @"color"];
    [defaults synchronize];
    NSLog(@"value saves in settings");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
