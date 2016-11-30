//
//  gameObjects.m
//  coreDataPlay
//
//  Created by Alex Maguire on 11/28/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "gameObjects.h"

@implementation gameObject
@synthesize strength, dexterity, constitution, intellegence, wisdom, charisma;
@synthesize abilities, skills;
-(bool)saveToManagedObjectContext:(NSManagedObjectContext *)context{
    @throw [NSException exceptionWithName:@"NotImplemented" reason:@"To be implemented at a later date" userInfo:nil];
}
-(bool)saveToManagedObjectContext:(NSManagedObjectContext *)context overriding:(NSManagedObject *)object{
    @throw [NSException exceptionWithName:@"NotImplemented" reason:@"To be implemented at a later date" userInfo:nil];
}
@end
