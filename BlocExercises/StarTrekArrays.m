//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    return [characterString componentsSeparatedByString:@";"];
}

    //got this one

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    return [characterArray componentsJoinedByString:@";"];
}

    //got this one.

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSArray *startrekArray = [characterArray sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
    return startrekArray;
}
    //I don't get why I am using sortedArrayUsingSelector and why characterArray sortUsingDescriptors: wouldn't work for me...


- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    NSPredicate *worfIsPresent = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'Worf'"];
    for (NSString *characterName in characterArray) {
        NSString *lowercaseName = characterName.lowercaseString;
        NSRange worfRange = [lowercaseName rangeOfString:@"worf"];
    }
    }
@end

    //Completely lost on NSPredicate....