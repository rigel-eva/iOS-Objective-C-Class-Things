//
//  Fraction.m
//  2592-class_2-ObjectiveC
//
//  Created by Alex Maguire on 8/31/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
@implementation Fraction
-(Fraction*)init{
    self.numerator=0;
    self.denominator=0;
    return self;
}
-(Fraction*)init:(int)n, d{
    self.numerator=n;
    self.denominator=d;
    return self;
}
-(void) print{
    NSLog(@"%@", [self to_s]);
}
-(NSString * )to_s{
    NSString* returner;
    returner=[NSString stringWithFormat: @"%i/%i",numerator, denominator];
    return returner;
}
-(void) setDenominator:(int)d{
    denominator=d;
}
-(void) setNumerator:(int)n{
    numerator=n;
}
-(double) calculate{
    return (double)numerator/denominator;
}
@end
