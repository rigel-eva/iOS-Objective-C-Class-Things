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
    testObject.skills=[[NSMutableDictionary alloc] init];
    [testObject.skills setObject:
     [[NSArray alloc]initWithObjects:@3,@4, nil] forKey:@"Knowledge: Local"];
    [testObject.skills setObject:
     [[NSArray alloc]initWithObjects:@3,@8, nil] forKey:@"Craft: Alchemy"];
    [testObject.skills setObject:
     [[NSArray alloc]initWithObjects:@4,@2, nil] forKey:@"Survival"];
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
