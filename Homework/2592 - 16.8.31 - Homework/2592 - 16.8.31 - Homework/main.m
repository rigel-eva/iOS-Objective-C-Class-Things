//
//  main.m
//  2592 - 16.8.31 - Homework
//
//  Created by Alex Maguire on 9/1/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Book Code
        Calculator *deskCalc=[[Calculator alloc] init];
        [deskCalc setAccumulator:100.0];
        [deskCalc add:200.];
        [deskCalc divide:15.];
        [deskCalc subtract:10.0];
        [deskCalc multiply:5];
        NSLog(@"The result is %g",[deskCalc accumulator]);//Should return 50
        //Personal testing code;
        [deskCalc memoryStore];//Storing the current value of Accumulator into memory
        [deskCalc setAccumulator:-999999999];//Setting accumulator to nonsense
        NSLog(@"Accumulator is currently %g",[deskCalc memoryRecall]);//Double checking that reacalling works as expected
        NSLog(@"Accumulator is Currently %g",[deskCalc memoryAdd:50]);//Making sure that we don't accidentally override the current accumulator
        NSLog(@"Accumulator is Currently %g", [deskCalc memoryRecall]);//Accumulator should be 100
        NSLog(@"Accumulator is Currently %g", [deskCalc memorySubtract:25]);//Once again checking that we don't accedentally override the current accumulator
        NSLog(@"Accumulator is Currently %g",[deskCalc memoryRecall]);//should be 25;
        [deskCalc memoryClear];//zeroing out the memory
        NSLog(@"Accumulator is Currently %g", [deskCalc memoryRecall]);//Should zero out the accumulator
    }
    return 0;
}
