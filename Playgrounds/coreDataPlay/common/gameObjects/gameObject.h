//
//  gameObject.h
//  coreDataPlay
//
//  Created by Alex Maguire on 12/4/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "coreDataHandler.h"
#import "skill.h"
#import "ability.h"
@interface gameObject : NSObject{
    NSInteger strength;
    NSInteger dexterity;
    NSInteger constitution;
    NSInteger intellegence;
    NSInteger wisdom;
    NSInteger charisma;
    NSInteger baseHP;
    NSMutableArray *skills;//Should contain objects of type skill
    NSMutableArray *abilities;//Should contain objects of the type ability
}
//Base Abilities
@property NSInteger strength;
@property NSInteger dexterity;
@property NSInteger constitution;
@property NSInteger intellegence;
@property NSInteger wisdom;
@property NSInteger charisma;
@property (getter=strMod, readonly) NSInteger strengthModifier;
@property (getter=dexMod, readonly) NSInteger dexterityModifier;
@property (getter=conMod, readonly) NSInteger constitutionModifier;
@property (getter=intMod, readonly) NSInteger intellegenceModifier;
@property (getter=wisMod, readonly) NSInteger wisdomModifier;
@property (getter=chaMod, readonly) NSInteger charismaModifier;
//The Object's Base HP
@property NSInteger baseHP;
//Stored as the skill type
@property (nonatomic)NSMutableArray *skills;
//stored as the ability type
@property (nonatomic)NSMutableArray *abilities;
//Saves to the specified managed object context as a new instance in that context
-(bool)saveToManagedObjectContext:(NSManagedObjectContext*)context;
//Saves to the specified managed object context, overriding the specified object.
-(bool)saveToManagedObject:(NSManagedObject *)object;
@end
