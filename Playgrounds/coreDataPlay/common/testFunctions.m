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
    const NSArray *names=@[@"Lauretta Deleo",@"Paris Huffaker",@"Yuko Goldstein",@"Dori Degregorio",@"Rachele Exum",@"Wilbur Shumpert",@"Tammara Tippins",@"Sarina Arrant",@"Augustine Brutus",@"Loreta Vanderlinden",@"Erminia Sevigny",@"Roselia Reetz",@"Tennille Stancil",@"Deane Rasnake",@"Noreen Lobo",@"Eladia Risch",@"Carrie Fortin",@"Brendon Ganey",@"Carmina Hickey",@"Danna Yen",@"Jesse Boatwright",@"Tameka Dagostino",@"Esperanza Studley",@"Modesto Kin",@"Raleigh Beauford",@"Meghan Ehret",@"Nicolle Mable",@"Reva Mero",@"Yan Burkey",@"Sharmaine Tee",@"Leisha Covey",@"Angelic Dimartino",@"Loree Hembree",@"Saul Haymond",@"Sunny Cardoso",@"Theron Rusnak",@"Riley Degroat",@"Warren Arnot",@"Everette Roussell",@"Franchesca Hebert",@"Marilou Herndon",@"Christene Vinzant",@"Cornell Sandell",@"Monnie Neve",@"Darrell Marcum",@"Ollie Ronald",@"Milagro Vandergriff",@"Un Bramhall",@"Verena Rolland",@"Jade Sedberry"];//Just a list of names for reasons.
    testObject.name=[names objectAtIndex:arc4random()%names.count];
    testObject.race=@"Human";
    testObject.levels=@{@"Commoner":@1,@"Guide":@4};
    testObject.skills=[[NSMutableArray alloc] init];
    [testObject.skills addObject:[[skill alloc] initWithName:@"Knowledge: Local" skillType:intellegence ranks:4 modifier:0]];
    [testObject.skills addObject:[[skill alloc] initWithName:@"Craft: Alchemy" skillType:intellegence ranks:8 modifier:0]];
    [testObject.skills addObject:[[skill alloc] initWithName:@"Survival" skillType:wisdom ranks:2 modifier:-1]];
    [testObject.skills addObject:[[skill alloc] initWithName:@"Swim" skillType:strength ranks:0 modifier:-4]];

    //@{@"Knowledge: Local":@[@3, @4],@"Craft: Alchemy":@[@3,@8],@"Survival":@[@4,@2]};
    testObject.baseHP=4;
    //Generate random stats ...
    testObject.strength=arc4random()%5+arc4random()%5+arc4random()%5+3;
    testObject.dexterity=arc4random()%5+arc4random()%5+arc4random()%5+3;
    testObject.constitution=arc4random()%5+arc4random()%5+arc4random()%5+3;
    testObject.intellegence=arc4random()%5+arc4random()%5+arc4random()%5+3;
    testObject.wisdom=arc4random()%5+arc4random()%5+arc4random()%5+3;
    testObject.charisma=arc4random()%5+arc4random()%5+arc4random()%5+3;
    return testObject;
}
@end
