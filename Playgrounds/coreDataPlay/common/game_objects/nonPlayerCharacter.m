//
//  nonPlayerCharacter.m
//  coreDataPlay
//
//  Created by Alex Maguire on 12/4/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "nonPlayerCharacter.h"

@implementation nonPlayerCharacter
@synthesize levels;
@synthesize name, race;
-(bool)saveToManagedObjectContext:(NSManagedObjectContext*)context{
    NSString *entName=@"NonPlayerCharacter";
    NSLog(@"SavetoContext got: %@",context);
    AAONonPlayerCharacter *toSave=[NSEntityDescription insertNewObjectForEntityForName:entName inManagedObjectContext:context];
    return [self saveToManagedObject:toSave];
}
-(bool)saveToManagedObject:(AAONonPlayerCharacter *)object{
    object.levels=[NSKeyedArchiver archivedDataWithRootObject:levels];
    object.name=name;
    object.race=race;
    return [super saveToManagedObject:object];
}
@end
