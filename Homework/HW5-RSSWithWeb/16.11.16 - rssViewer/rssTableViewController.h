//
//  rssTableViewController.h
//  16.11.16 - rssViewer
//
//  Created by Alex Maguire on 11/16/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "webViewController.h"
@interface rssTableViewController : UITableViewController <NSXMLParserDelegate>{
    NSMutableArray *feedList;
    NSMutableDictionary *currentItem;
    NSMutableString *currentContents;
    NSString *url;
    
}
@property (nonnull,retain)NSString *url;

@end
