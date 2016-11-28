//
//  ViewController.m
//  coreDataPlay-macOS
//
//  Created by Alex Maguire on 11/24/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "ViewController.h"
@implementation ViewController{
    coreDataHandler *data;
    NSArray *displayData;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    data=[[coreDataHandler alloc]init];//This makes allocating the data entity a bit easier ...
    AAOTesterEntity* test=[NSEntityDescription insertNewObjectForEntityForName:@"TesterEntity" inManagedObjectContext:data.managedObjectContext];//Allocates our test entity
    test.testString=@"Boop";//Adds our data to the test entity
    NSError *error = nil;
    [self testFetch:data.managedObjectContext];
    if ([[test managedObjectContext] save:&error] == NO) {//Saves our data
        NSAssert(NO, @"Error saving context: %@\n%@", [error localizedDescription], [error userInfo]);
    }
}
-(void) testFetch:(NSManagedObjectContext*)moc{
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"TesterEntity"];
    
    NSError *error = nil;
    displayData=[moc executeFetchRequest:request error:&error];//AND THIS IS HOW WE GET DATA OUT!
    if (!displayData) {
        NSLog(@"Error fetching TesterEntity objects: %@\n%@", [error localizedDescription], [error userInfo]);
        abort();
    }
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}
-(NSInteger) numberOfRowsInTableView:(NSTableView *)tableView{
    return displayData.count;
}
- (id)tableView:(NSTableView *)aTableView objectValueForTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)rowIndex{
    AAOTesterEntity *current=displayData[rowIndex];
    NSLog(current.testString);
    return current.testString;
}
@end
