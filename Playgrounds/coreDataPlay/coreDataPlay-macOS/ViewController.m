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
    NSManagedObjectContext *moc=[data managedObjectContext];
    //test.testString=@"Boop";//Adds our data to the test entity
    [self loadDataSet:moc];
}
- (void) insertTestData:(NSManagedObjectContext*)moc{
    nonPlayerCharacter *testObject=[[nonPlayerCharacter alloc]init];
    testObject.name=@"I AM ERROR";
    testObject.race=@"Human";
    testObject.levels=@{@"Commoner":@1};
    testObject.skills=@{@"Knowledge: Local":@[@3, @4]};
    testObject.baseHP=4;
    testObject.strength=10;
    testObject.dexterity=10;
    testObject.constitution=10;
    testObject.intellegence=14;
    testObject.wisdom=10;
    testObject.charisma=10;
    NSLog(@"Passed: %@",moc);
    [testObject saveToManagedObjectContext:moc];
    
}
- (void) loadDataSet:(NSManagedObjectContext*)moc{
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"NonPlayerCharacter"];
    NSError *error = nil;
    displayData=[moc executeFetchRequest:request error:&error];//AND THIS IS HOW WE GET DATA OUT!
    if (!displayData) {
        NSLog(@"Error fetching NonPlayerCharacter objects, Will Try again after loading tester data");
        [self insertTestData:moc];
        [self loadDataSet:moc];
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
    AAONonPlayerCharacter *current=displayData[rowIndex];
    NSLog(@"%@",current.name);
    return current.name;
}
-(void)saveObject:(NSManagedObject*)object{
        NSError *error = nil;
    if ([[object managedObjectContext] save:&error] == NO) {//Saves our data
        NSAssert(NO, @"Error saving context: %@\n%@", [error localizedDescription], [error userInfo]);
    }
}
@end
