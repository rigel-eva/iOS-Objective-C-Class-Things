//
//  playerCharacter.m
//  coreDataPlay
//
//  Created by Alex Maguire on 12/4/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "playerCharacter.h"

@implementation playerCharacter
-(bool)saveToManagedObjectContext:(NSManagedObjectContext *)context{
    AAOPlayerCharacter *toSave=[[AAOPlayerCharacter alloc]initWithContext:context];
    return [self saveToManagedObject:toSave];
}
-(bool)saveToManagedObject:(NSManagedObject *)object{
    return [super saveToManagedObject:object];
}
@end
