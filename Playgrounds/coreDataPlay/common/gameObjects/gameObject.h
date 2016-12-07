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
@interface gameObject : NSObject{
    NSInteger strength;
    NSInteger dexterity;
    NSInteger constitution;
    NSInteger intellegence;
    NSInteger wisdom;
    NSInteger charisma;
    NSInteger baseHP;
    NSMutableArray *skills;//Should contain objects of type skill
    NSMutableDictionary *abilities;//Should contain the ability name as the key, and the ability descriptin as a string, for formating purposes
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
//Stored as KEY:skill name VALUE: [int for ability, total points invested+modifiers]
/*Integer Values for abilities
 * 0: Strength
 * 1: Dexterity
 * 2: Constitution
 * 3: Intelligence
 * 4: Wisdom
 * 5: Charisma
 */
@property (nonatomic)NSMutableArray *skills;
//Stored as KEY:Ability Name Value: Ability Description
@property (nonatomic)NSMutableDictionary *abilities;
//Saves to the specified managed object context as a new instance in that context
-(bool)saveToManagedObjectContext:(NSManagedObjectContext*)context;
//Saves to the specified managed object context, overriding the specified object.
-(bool)saveToManagedObject:(NSManagedObject *)object;
@end
