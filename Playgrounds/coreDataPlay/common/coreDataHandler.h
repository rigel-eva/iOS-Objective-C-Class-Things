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
@interface AAOTesterEntity:NSManagedObject
@property (nonatomic, strong) NSString* testString;
@end
@interface AAOGameObject:NSManagedObject
@property (nonatomic) NSInteger strength;
@property (nonatomic) NSInteger dexterity;
@property (nonatomic) NSInteger constitution;
@property (nonatomic) NSInteger intellegence;
@property (nonatomic) NSInteger wisdom;
@property (nonatomic) NSInteger charisma;
@end
