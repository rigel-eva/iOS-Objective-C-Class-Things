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
@end
