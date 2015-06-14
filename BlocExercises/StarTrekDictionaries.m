//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    return characterDictionary[@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    NSMutableArray *startrekArray = [NSMutableArray array];
    for (NSDictionary *characterDictionary in charactersArray) {
        [startrekArray addObject:characterDictionary[@"favorite drink"]];
    }
    return startrekArray;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    NSMutableDictionary *startrekDictionary = [characterDictionary mutableCopy];
    startrekDictionary[@"quote"] = @"Bloc is really obsessed with Star Trek!";
    
    return startrekDictionary;
}

@end