//
//  nonPlayerCharacter.h
//  coreDataPlay
//
//  Created by Alex Maguire on 12/4/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "gameObject.h"
@interface nonPlayerCharacter:gameObject{
    NSDictionary *levels;
    NSString *name;
    NSString *race;
}
//stored as KEY: class name, Value: levels invested
@property (nonatomic, strong) NSDictionary *levels;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *race;
-(bool)saveToManagedObjectContext:(NSManagedObjectContext*)context;
-(bool)saveToManagedObject:(NSManagedObject *)object;
@end;
