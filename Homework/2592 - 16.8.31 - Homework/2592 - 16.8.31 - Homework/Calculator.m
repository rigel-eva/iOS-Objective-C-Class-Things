//
//  Calculator.m
//  2592 - 16.8.31 - Homework
//
//  Created by Alex Maguire on 9/1/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"
@implementation Calculator
{
    double accumulator;
    double memory;
}
- (void) setAccumulator: (double) value{
    accumulator = value;
}
- (void) clear{
    accumulator=0;
}
-(double) accumulator{
    return accumulator;
}
-(void) add: (double) value{
    accumulator+=value;
}
-(void) subtract:(double)value{
    accumulator-=value;
}
-(void) multiply:(double)value{
    accumulator*=value;
}
-(void) divide:(double)value{
    accumulator/=value;
}
//Personal Class Code
-(double) memoryClear{
    memory=0;
    return accumulator;
}
-(double) memoryStore{
    memory=accumulator;
    return accumulator;
}
-(double) memoryAdd:(double)value{
    memory+=value;
    return accumulator;
}
-(double) memorySubtract:(double)value{
    memory -=value;
    return accumulator;
}
-(double) memoryRecall{
    accumulator=memory;
    return accumulator;
}
@end
