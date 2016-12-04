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
    testObject.levels=@{@"Commoner":@1};
    testObject.skills=@{@"Knowledge: Local":@[@3, @4]};
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
