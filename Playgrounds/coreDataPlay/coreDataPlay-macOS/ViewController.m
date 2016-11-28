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
    NSArray *data;
}
@synthesize tableView;
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
    NSArray *results=[moc executeFetchRequest:request error:&error];//AND THIS IS HOW WE GET DATA OUT!
    if (!results) {
        NSLog(@"Error fetching TesterEntity objects: %@\n%@", [error localizedDescription], [error userInfo]);
        abort();
    }
    for(int i=0; i<results.count; i++){
        AAOTesterEntity *current=results[i];
        NSLog(@"Result %i: %@",i,current.testString);
    }
    NSLog(@"This is just a break, plz ignore");
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}
-(NSInteger) numberOfRowsInTableView:(NSTableView *)tableView{
    return
}

@end
