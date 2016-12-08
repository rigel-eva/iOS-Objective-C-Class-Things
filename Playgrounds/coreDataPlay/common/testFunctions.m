//
//  testFunctions.m
//  coreDataPlay
//
//  Created by Alex Maguire on 12/4/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "testFunctions.h"

@implementation testFunctions
+ (nonPlayerCharacter*) generateTestObject{
    nonPlayerCharacter *testObject=[[nonPlayerCharacter alloc]init];
    testObject.name=@"I AM ERROR";
    testObject.race=@"Human";
    testObject.levels=@{@"Commoner":@1,@"Guide":@4};
    testObject.skills=[[NSMutableArray alloc] init];
    [testObject.skills addObject:[[skill alloc] initWithName:@"Knowledge: Local" skillType:intellegence ranks:4 modifier:0]];
    [testObject.skills addObject:[[skill alloc] initWithName:@"Craft: Alchemy" skillType:intellegence ranks:8 modifier:0]];
    [testObject.skills addObject:[[skill alloc] initWithName:@"Survival" skillType:wisdom ranks:2 modifier:-1]];
    [testObject.skills addObject:[[skill alloc] initWithName:@"Swim" skillType:strength ranks:0 modifier:-4]];

    //@{@"Knowledge: Local":@[@3, @4],@"Craft: Alchemy":@[@3,@8],@"Survival":@[@4,@2]};
    testObject.baseHP=4;
    testObject.strength=10;
    testObject.dexterity=10;
    testObject.constitution=10;
    testObject.intellegence=14;
    testObject.wisdom=10;
    testObject.charisma=10;
    return testObject;
}
@end
