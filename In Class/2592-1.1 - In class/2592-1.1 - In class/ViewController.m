//
//  ViewController.m
//  2592-1.1 - In class
//
//  Created by Alex Maguire on 8/24/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController
int getRandomInteger(int minimum, int maximum) {
    return arc4random_uniform((maximum - minimum) + 1) + minimum;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)button:(id)sender {
    NSArray *PHRASES= @[@"Catchphrase!",@"Hello World", @"Cheer's love the Calvary's here!", @"You're making a chicken out of a feather"];//Would like to find a more ellegant way to do this ...
    _label.text=PHRASES[getRandomInteger(0,(int)PHRASES.count-1)];
}
- (IBAction)btnClicked:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Hello CIS 2582" message:@"Here I come" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}

@end
