//
//  DiceCollector.m
//  objective-c-assignment#4
//
//  Created by Celal Aslan on 2018-04-30.
//  Copyright © 2018 Celal Aslan. All rights reserved.
//

#import "DiceCollector.h"
#import "Dice.h"

@implementation DiceCollector


- (instancetype)init {
    if ( self = [super init]) {
        [self createDiceCollection];
    }
    
    return self;
}

-(void) createDiceCollection {
    self.dice = [NSMutableArray array];
    for (NSInteger i = 0; i < 5; ++i) {
        Dice *dice = [[Dice alloc] init];
        [self.dice addObject:dice];
    }
}

-(void) roll {
    for (Dice *dice in self.dice) {
        if (!dice.hold) {
            [dice randomize]; // method
        }
    }
}


-(void)reset {
    for (Dice *dice in self.dice) {
        dice.hold = NO;
    }
}

//-(void)holdDieAtIndex:(NSInteger)index {
//  if ([Dice *dice =
//}

-(int)score {
    int sumOfDiceValue = 0; //keeping sum outside of iteration so it doesn't disappear
    for (Dice *dice in self.dice) {
        sumOfDiceValue = sumOfDiceValue + dice.diceValue;
        NSLog(@"%i", sumOfDiceValue);
    }
    return sumOfDiceValue;
}


@end
