//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@interface StuffRememberer ()

@property (nonatomic, strong) NSMutableArray *arrayToRemember;
@property (nonatomic, copy) NSMutableArray *arrayToCopy;
@property (nonatomic, assign) CGFloat floatToRemember;

@end

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    /* WORK HERE */
    self.arrayToRemember = arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    /* WORK HERE */
    self.arrayToCopy = arrayToCopy;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    /* WORK HERE */
    self.floatToRemember = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
    /* WORK HERE */
    return self.arrayToRemember;
}

- (NSMutableArray *) arrayYouShouldCopy {
    /* WORK HERE */
    return self.arrayToCopy;
}

- (CGFloat) floatYouShouldRemember {
    /* WORK HERE */
    return self.floatToRemember;
}

@end