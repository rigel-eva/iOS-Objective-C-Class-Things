//
//  Header.h
//  2592-class_2-ObjectiveC
//
//  Created by Alex Maguire on 8/31/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#ifndef Header_h
#define Header_h
@interface Fraction : NSObject
{
    int numerator;
    int denominator;
    NSString *myString;
}
-(Fraction *) init;
-(Fraction *) init: (int) n, d;
//-(Fraction *) init: (int) n _denominator:(int)d _andStr:(NSString *) s;
-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(double) calculate;
-(NSString * )to_s;//If you want to return something beyond c typing it has to be returned by reference.
@end
#endif /* Header_h */
