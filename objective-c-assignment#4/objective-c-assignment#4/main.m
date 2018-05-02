//
//  main.m
//  objective-c-assignment#4
//
//  Created by Celal Aslan on 2018-04-30.
//  Copyright © 2018 Celal Aslan. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputCollector.h"
#import "DiceCollector.h"

int main(int argc, const char * argv[]) {
    
    
    DiceCollector *diceCollector = [[DiceCollector alloc] init];
    
    while (YES) {
        
        NSString *menuString = @"\nWhat would you like to do next?\nroll?\nreset\ncheck your score?";
        
        InputCollector *inputCollector = [[InputCollector alloc] init];
        
        NSString *userSelection = [inputCollector inputForPrompt:menuString];
        
        if ([userSelection isEqual:@"roll"]) {
            [diceCollector roll];
            for (Dice *dice in diceCollector.dice /*the property inside diceCollector */ ) {
                NSLog(@"You rolled %d", dice.diceValue);
            }
        }
        else if ([userSelection isEqual:@"score"]) {
            [diceCollector score];
        }
        else if ([userSelection isEqual:@"reset" ]) {
            [diceCollector reset];
        }
        else if ([userSelection isEqual:@"rolll"]) {
            NSLog(@"YOU WIN THE GAME. HUZZAH!");
            return 0;
        }
        
    }
    return 0;
}
