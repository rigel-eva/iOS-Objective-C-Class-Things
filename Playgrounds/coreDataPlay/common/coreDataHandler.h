//
//  coreDataHandler.h
//  coreDataPlay
//
//  Created by Alex Maguire on 11/24/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
@interface coreDataHandler : NSObject
@property (strong)NSManagedObjectContext *managedObjectContext;
-(void) initializeCoreData;
@end
#pragma mark Managed Object Definitions
@interface AAOGameObject:NSManagedObject
@property (nonatomic) NSInteger strength;
@property (nonatomic) NSInteger dexterity;
@property (nonatomic) NSInteger constitution;
@property (nonatomic) NSInteger intellegence;
@property (nonatomic) NSInteger wisdom;
@property (nonatomic) NSInteger charisma;
@property (nonatomic) NSInteger baseHP;
@property (nonatomic, strong) NSData *skills;
@property (nonatomic, strong) NSData *abilities;
@end
@interface AAOPlayer:NSManagedObject
@property (nonatomic, strong) NSString *name;
@end
@interface AAONonPlayerCharacter:AAOGameObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *race;
@property (nonatomic, strong) NSData *levels;
@end
@interface AAOPlayerCharacter:AAOGameObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *race;
@property (nonatomic, strong) NSData *levels;
@end
