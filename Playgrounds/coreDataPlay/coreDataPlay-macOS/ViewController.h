//
//  ViewController.h
//  coreDataPlay-macOS
//
//  Created by Alex Maguire on 11/24/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "coreDataHandler.h"
@interface ViewController : NSViewController <NSTableViewDelegate, NSTableViewDataSource>
@property (weak) IBOutlet NSTableView *tableView;


@end

