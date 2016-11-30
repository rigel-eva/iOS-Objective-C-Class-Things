//
//  gameObjects.h
//  coreDataPlay
//
//  Created by Alex Maguire on 11/28/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
@interface gameObject : NSObject{
    NSInteger strength;
    NSInteger dexterity;
    NSInteger constitution;
    NSInteger intellegence;
    NSInteger wisdom;
    NSInteger charisma;
    NSDictionary *skills;//Should contain the skill name as the key, and the skill descrition, and modifier as a array or a tuple.
    NSDictionary *abilities;//Should contain the ability name as the key, and the ability descriptin as a string, for formating purposes
}
@property NSInteger strength;
@property NSInteger dexterity;
@property NSInteger constitution;
@property NSInteger intellegence;
@property NSInteger wisdom;
@property NSInteger charisma;
@property NSDictionary *skills;
@property NSDictionary *abilities;
//Saves to the specified managed object context as a new instance in that context
-(bool)saveToManagedObjectContext:(NSManagedObjectContext*)context;
//Saves to the specified managed object context, overriding the specified object.
-(bool)saveToManagedObjectContext:(NSManagedObjectContext *)context overriding:(NSManagedObject *)object;
@end
