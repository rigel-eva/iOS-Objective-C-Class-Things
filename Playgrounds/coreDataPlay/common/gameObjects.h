//
//  gameObjects.h
//  coreDataPlay
//
//  Created by Alex Maguire on 11/28/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "coreDataHandler.h"
@interface gameObject : NSObject{
    NSInteger strength;
    NSInteger dexterity;
    NSInteger constitution;
    NSInteger intellegence;
    NSInteger wisdom;
    NSInteger charisma;
    NSInteger baseHP;
    NSDictionary *skills;//Should contain the skill name as the key, and the skill descrition, and modifier as a array or a tuple.
    NSDictionary *abilities;//Should contain the ability name as the key, and the ability descriptin as a string, for formating purposes
}
@property NSInteger strength;
@property NSInteger dexterity;
@property NSInteger constitution;
@property NSInteger intellegence;
@property NSInteger wisdom;
@property NSInteger charisma;
@property NSInteger baseHP;
@property (nonatomic )NSDictionary *skills;
@property NSDictionary *abilities;
//Saves to the specified managed object context as a new instance in that context
-(bool)saveToManagedObjectContext:(NSManagedObjectContext*)context;
//Saves to the specified managed object context, overriding the specified object.
-(bool)saveToManagedObject:(NSManagedObject *)object;
@end
@interface player:NSObject{
    NSString *name;
}
@property (nonatomic, strong) NSString *name;
@end
@interface playerCharacter :gameObject{
    NSDictionary *levels;
    NSString *name;
    NSString *race;
}
@property (nonatomic, strong) NSDictionary *levels;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *race;
-(bool)saveToManagedObjectContext:(NSManagedObjectContext*)context;
-(bool)saveToManagedObject:(NSManagedObject *)object;
@end
@interface nonPlayerCharacter:gameObject{
    NSDictionary *levels;
    NSString *name;
    NSString *race;
}
@property (nonatomic, strong) NSDictionary *levels;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *race;
-(bool)saveToManagedObjectContext:(NSManagedObjectContext*)context;
-(bool)saveToManagedObject:(NSManagedObject *)object;
@end;
