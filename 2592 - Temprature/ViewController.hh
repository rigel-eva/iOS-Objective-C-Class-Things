//
//  ViewController.h
//  2592 - Temprature
//
//  Created by student on 9/14/16.
//  Copyright © 2016 sir_rigel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource>{

    IBOutlet UIPickerView *unit1;
    IBOutlet UIPickerView *unit2;
    IBOutlet UITextField *input1;
    IBOutlet UITextField *input2;
}
- (IBAction)tempConvert:(id)sender;
-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView;
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component;
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component;
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component;
@end

