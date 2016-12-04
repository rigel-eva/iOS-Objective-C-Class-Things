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
    AAONonPlayerCharacter *selectedCharacter;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    data=[[coreDataHandler alloc]init];//This makes allocating the data entity a bit easier ...
    NSManagedObjectContext *moc=[data managedObjectContext];
    //test.testString=@"Boop";//Adds our data to the test entity
    [self loadDataSet:moc];
}
- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
    // Update the view, if already loaded.
}
#pragma mark Table View Delegate Stuff

- (BOOL)tableView:(NSTableView *)tableView shouldSelectRow:(NSInteger)row{
    if(selectedCharacter!=nil){
        selectedCharacter.name=_name.stringValue;
        selectedCharacter.race=_race.stringValue;
    }
    selectedCharacter=[displayData objectAtIndex:row];
    _name.stringValue=selectedCharacter.name;
    _race.stringValue=selectedCharacter.race;
    return true;
}
-(NSInteger) numberOfRowsInTableView:(NSTableView *)tableView{
    return displayData.count;
}
- (id)tableView:(NSTableView *)aTableView objectValueForTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)rowIndex{
    AAONonPlayerCharacter *current=displayData[rowIndex];
    NSLog(@"%@",current.name);
    return current.name;
}
#pragma mark Data Set Stuff
- (void) loadDataSet:(NSManagedObjectContext*)moc{
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"NonPlayerCharacter"];
    NSError *error = nil;
    displayData=[moc executeFetchRequest:request error:&error];//AND THIS IS HOW WE GET DATA OUT!
    if (!displayData) {
        NSLog(@"Error fetching NonPlayerCharacter objects: %@\n%@", [error localizedDescription], [error userInfo]);
        abort();

    }
    /*if(displayData.count<1){
        [self insertTestData:moc];
        [self loadDataSet:moc];
    }//*/
}

-(void)saveObject:(NSManagedObject*)object{
        NSError *error = nil;
    if ([[object managedObjectContext] save:&error] == NO) {//Saves our data
        NSAssert(NO, @"Error saving context: %@\n%@", [error localizedDescription], [error userInfo]);
    }
}
@end
