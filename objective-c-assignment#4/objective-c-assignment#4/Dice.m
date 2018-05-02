//
//  Dice.m
//  objective-c-assignment#4
//
//  Created by Celal Aslan on 2018-04-30.
//  Copyright © 2018 Celal Aslan. All rights reserved.
//

#import "Dice.h"

@implementation Dice

-(instancetype)init {
    self = [super init];
    if (self) {
        _hold = NO;
        [self randomize];
    }
    return self;
}

-(void)randomize
{
    self.diceValue = arc4random_uniform(6) + 1;
}

@end
@end
