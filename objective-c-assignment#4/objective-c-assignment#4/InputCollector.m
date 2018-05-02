//
//  InputCollector.m
//  objective-c-assignment#4
//
//  Created by Celal Aslan on 2018-04-30.
//  Copyright © 2018 Celal Aslan. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString
{
    // ask prompt
    NSLog(@"%@", promptString);
    
    // collect prompt
    char input[255];
    fgets(input, 255, stdin);
    
    // return prompt
    NSString *inputString = [NSString stringWithUTF8String:input];
    inputString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    return inputString;
}

+ (void)printToPrompt:(NSString *)promptString {
    
    NSLog(@"%@",promptString);
}


@end
