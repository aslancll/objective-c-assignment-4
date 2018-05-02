//
//  InputCollector.h
//  objective-c-assignment#4
//
//  Created by Celal Aslan on 2018-04-30.
//  Copyright © 2018 Celal Aslan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

+ (NSString *)inputForPrompt:(NSString *)promptString;

+ (void)printToPrompt:(NSString *)promptString;

@end
