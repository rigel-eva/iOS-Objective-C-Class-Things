//
//  ViewController.h
//  16.11.16 - rssViewer
//
//  Created by Alex Maguire on 11/16/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "rssTableViewController.h"
@interface ViewController : UITableViewController <NSXMLParserDelegate>{
    NSMutableArray *rssList;
    
}


@end

