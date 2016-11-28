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
    //test.testString=@"Boop";//Adds our data to the test entity
    [self testFetch:data.managedObjectContext];

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
    NSLog(@"%@",current.testString);
    return current.testString;
}
-(void)saveObject:(NSManagedObject*)object{
        NSError *error = nil;
    if ([[object managedObjectContext] save:&error] == NO) {//Saves our data
        NSAssert(NO, @"Error saving context: %@\n%@", [error localizedDescription], [error userInfo]);
    }
}
@end
