//
//  ViewController.m
//  2592 - Temprature
//
//  Created by student on 9/14/16.
//  Copyright © 2016 sir_rigel. All rights reserved.
//

#import "ViewController.hh"
#import "tempConvert.hpp"
@interface ViewController ()

@end

@implementation ViewController

static NSString *pd[3]={@"Farenheight", @"Celcius", @"Kelven"};//The tempratures we have available
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [unit2 selectRow:1 inComponent:0 animated:true];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)tempConvert:(id)sender{
    if([sender isEqual:input1]||[sender isEqual:unit2]){
        switch([unit1 selectedRowInComponent:0]){//Essentially we are trying to switch inbetween wether it's celcius,farenheigt, or kelven.
            case 0:
                [self farConvert:[unit2 selectedRowInComponent:0] input:input1 output:input2];
                break;
            case 1:
                [self celsConvert:[unit2 selectedRowInComponent:0] input:input1 output:input2];
                break;
            case 2:
                [self kelConvert:[unit2 selectedRowInComponent:0] input:input1 output:input2];
                break;
        }
    }else{
        switch([unit2 selectedRowInComponent:0]){
            case 0:
                [self farConvert:[unit1 selectedRowInComponent:0] input:input2 output:input1];
                break;
            case 1:
                [self celsConvert:[unit1 selectedRowInComponent:0] input:input2 output:input1];
                break;
            case 2:
                [self kelConvert:[unit1 selectedRowInComponent:0] input:input2 output:input1];
                break;
        }
        input1.text=[NSString stringWithFormat:@"%f",farToCel([input2.text doubleValue])];
    }
}
-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return 3;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return pd[row];
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    [self tempConvert:pickerView];
}
-(void)celsConvert:(NSInteger)to input:(UITextField*)input output:(UITextField*)output{
    switch(to){
        case 0:
            output.text=[NSString stringWithFormat:@"%f",farToCel([input.text floatValue])];
            break;
        case 1:
            output.text=input.text;//No sense in duplicating myself ...
            break;
        case 2:
            output.text=[NSString stringWithFormat:@"%f",farToCel([input.text floatValue])];
            break;
    }
}
-(void)farConvert:(NSInteger)to input:(UITextField*)input output:(UITextField*)output{
    switch (to){
        case 0://far to far
            output.text=input.text;//Once again, not repeating myself...
            break;
        case 1://far to cel
            output.text=[NSString stringWithFormat:@"%f",farToCel([input.text floatValue])];
            break;
        case 2://far to kel
            output.text=[NSString stringWithFormat:@"%f",celToKel(farToCel([input.text floatValue]))];
            break;
    }
    
}
-(void)kelConvert:(NSInteger)to input:(UITextField*)input output:(UITextField*)output{
    switch (to){
        case 0://kel to far
            output.text=[NSString stringWithFormat:@"%f",celToFar(kelToCel([input.text floatValue]))];
            break;
        case 1://kel to cel
            output.text=[NSString stringWithFormat:@"%f",celToFar(kelToCel([input.text floatValue]))];
            break;
        case 2://kel to kel
            output.text=input.text;
            break;
    }
}
@end
