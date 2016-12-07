//
//  skill.h
//  coreDataPlay
//
//  Created by Alex Maguire on 12/6/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import <Foundation/Foundation.h>
enum ability{strength, dexterity, constitution, intellegence, wisdom, charisma, none};
@interface skill : NSObject
@property (nonatomic) NSString* name;
@property (nonatomic) enum ability skillType;
@property (nonatomic) NSInteger ranks;
@property (nonatomic) NSInteger modifier;
-(id)initWithName:(NSString*)_name skillType:(enum ability)_ability ranks:(NSInteger)_ranks modifier:(NSInteger)_modifier;
@end
