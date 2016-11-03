//
//  ViewController.h
//  appSettings
//
//  Created by student on 11/2/16.
//  Copyright © 2016 student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource>{
    IBOutlet UITextField *username;
    IBOutlet UITextField *password;
    IBOutlet UIPickerView *favoriteColor;
}
@property (nonatomic, retain) UITextField *username;
@property (nonatomic, retain) UITextField *password;
@property (nonatomic, retain) UIPickerView *favoriteColor;
-(IBAction)loadSettings:(id)sender;
-(IBAction)saveSettings:(id)sender;
-(IBAction)doneEditing:(id)sender;
@end

