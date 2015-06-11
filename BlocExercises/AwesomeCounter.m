//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    // test that string works equally
    // if number is the same as the other number, then the test would be equal.
    if (number == otherNumber) {
        return [NSString stringWithFormat:@"%ld", (long)number];
    }
    
    // If low number = number, then the high number will be greater and equal other number
    
    NSInteger lowNumber, highNumber;
    
    if (number < otherNumber) {
        lowNumber = number;
        highNumber = otherNumber;
    } else {
    // else, the lownumber would be greater than the high number
        lowNumber = otherNumber;
        highNumber = number;
    }
    
    // loop over all the numbers and append to result string
    // if the variable in the initialization is lower or equal to the high number, then the loop will continue until it reaches the variable?
    
    NSMutableString *numberString = [NSMutableString string];
    
    // combining looping and NSMutable string (append!)
    // you can't append in regular NSString, so you must use NSMutableString
    
    for (NSInteger awesomeNumber = lowNumber; awesomeNumber <= highNumber; awesomeNumber++) {
        [numberString appendFormat:@"%ld", (long)awesomeNumber];
    }
    
    // returning the numberString function...
    // append is in mutable strings only!
    // initialization, conditional statement, update
    
    return numberString;
}
    

    


@end



