//
//  main.m
//  2592-class_2-ObjectiveC
//
//  Created by Alex Maguire on 8/31/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Fraction *myFraction;//create an instance of a fraction
        myFraction=[[Fraction alloc] init];
        //myFraction=[myFraction init];//Could remove the init and do it this way, but above is much more compact.
        //myFraction=[Fraction new];//This way is valid, though does not allow for custom initilizers.
        //Set Fraction to 1/3
        [myFraction setNumerator:1];
        [myFraction setDenominator:3];
        //Display the fraction using the print method
        NSLog(@"The value of myFraction is: %@",[myFraction to_s]);
        //[myFraction print];//Could remove the reference to to_s ... but this is frankly more fun.
    }
    return 0;
}

//Same rules as before, if you forward declare, you don't have to have this above where it's being executed.
