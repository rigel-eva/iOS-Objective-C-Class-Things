//
//  playerCharacter.h
//  coreDataPlay
//
//  Created by Alex Maguire on 12/4/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "nonPlayerCharacter.h"
#import "player.h"

@interface playerCharacter :nonPlayerCharacter{
    
}
-(bool)saveToManagedObjectContext:(NSManagedObjectContext*)context;
-(bool)saveToManagedObject:(NSManagedObject *)object;
@end
