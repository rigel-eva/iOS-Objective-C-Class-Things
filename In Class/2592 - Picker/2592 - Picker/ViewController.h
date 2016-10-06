//
//  ViewController.h
//  2592 - Picker
//
//  Created by student on 9/14/16.
//  Copyright © 2016 sir_rigel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UIPickerViewDelegate, UIPickerViewDataSource>{
    IBOutlet UIPickerView *picker;
}
@property (nonatomic, retain) UIPickerView *picker;
@end

