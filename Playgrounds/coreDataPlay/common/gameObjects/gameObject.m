//
//  gameObject.m
//  coreDataPlay
//
//  Created by Alex Maguire on 12/4/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "gameObject.h"
#import "coreDataHandler.h"
@implementation gameObject
@synthesize strength, dexterity, constitution, intellegence, wisdom, charisma, baseHP;
@synthesize abilities, skills;
-(id)initFromManagedObject:(AAOGameObject *)object{
    self.strength=object.strength;
    self.dexterity=object.dexterity;
    self.constitution=object.constitution;
    self.intellegence=object.intellegence;
    self.wisdom=object.wisdom;
    self.charisma=object.charisma;
    self.baseHP=object.baseHP;
    self.abilities=[NSKeyedUnarchiver unarchiveObjectWithData:object.abilities];
    self.skills=[NSKeyedUnarchiver unarchiveObjectWithData:object.skills];
    return self;
}
-(bool)saveToManagedObjectContext:(NSManagedObjectContext *)context{
    AAOGameObject *toSave=[[AAOGameObject alloc]initWithContext:context];
    return [self saveToManagedObject:toSave];
    //@throw [NSException exceptionWithName:@"NotImplemented" reason:@"To be implemented at a later date" userInfo:nil];
}
-(bool)saveToManagedObject:(AAOGameObject *)object{
    NSError *error=nil;
    object.strength=strength;
    object.dexterity=dexterity;
    object.constitution=constitution;
    object.intellegence=intellegence;
    object.wisdom=wisdom;
    object.charisma=charisma;
    object.baseHP=baseHP;
    object.abilities=[NSKeyedArchiver archivedDataWithRootObject:abilities];
    object.skills=[NSKeyedArchiver archivedDataWithRootObject:skills];
    return [[object managedObjectContext] save:&error]==NO;
    //@throw [NSException exceptionWithName:@"NotImplemented" reason:@"To be implemented at a later date" userInfo:nil];
}
-(NSInteger)strMod{
    return (strength-10)/2;
}
-(NSInteger)dexMod{
    return (dexterity-10)/2;
}
-(NSInteger)conMod{
    return (constitution-10)/2;
}
-(NSInteger)intMod{
    return (intellegence-10)/2;
}
-(NSInteger)wisMod{
    return (wisdom-10)/2;
}
-(NSInteger)chaMod{
    return (charisma-10/2);
}
@end
