//
//  skill.m
//  coreDataPlay
//
//  Created by Alex Maguire on 12/6/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "skill.h"

@implementation skill
@synthesize name;
@synthesize ranks, modifier;
@synthesize skillType;
-(id)initWithName:(NSString*)_name skillType:(enum ability)_ability ranks:(NSInteger)_ranks modifier:(NSInteger)_modifier{
    name=_name;
    skillType=_ability;
    ranks=_ranks;
    modifier=_modifier;
    return self;
}
@end
