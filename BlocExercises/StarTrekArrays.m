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
    //NSArray *startrekArray = [characterArray sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    
    NSArray *startrekArray = [characterArray sortedArrayUsingDescriptors:@[sortDescriptor]];
    
    return startrekArray;
}
    //I don't get why I am using sortedArrayUsingSelector and why characterArray sortUsingDescriptors: wouldn't work for me...


- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    
    NSPredicate *containsThe = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];

    
    NSArray* arr = [characterArray filteredArrayUsingPredicate:containsThe];
    
//    for (NSString *characterName in characterArray) {
//        NSString *lowercaseName = characterName.lowercaseString;
//        NSRange worfRange = [lowercaseName rangeOfString:@"worf"];
//        
//        if (worfRange.location != NSNotFound) {
//            return YES;
//        }
//    }
    
    return arr.count > 0;
}
@end

    //Completely lost on NSPredicate....