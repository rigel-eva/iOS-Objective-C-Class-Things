//
//  Calculator.h
//  2592 - 16.8.31 - Homework
//
//  Created by Alex Maguire on 9/1/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#ifndef Calculator_h
#define Calculator_h
@interface Calculator: NSObject
//accumulator methods
- (void) setAccumulator: (double) value;
- (void) clear;
- (double) accumulator;
//Arithmetic methods
-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;
//Memory Methods
-(double) memoryClear;// clear memory
-(double) memoryStore;// set memory to accumulator
-(double) memoryRecall; // set accumulator to memory
-(double) memoryAdd: (double) value; // add value into memory
-(double) memorySubtract: (double) value;// subtract value from memory
@end

#endif /* Calculator_h */
