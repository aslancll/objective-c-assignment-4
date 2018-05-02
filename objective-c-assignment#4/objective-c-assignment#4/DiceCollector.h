//
//  DiceCollector.h
//  objective-c-assignment#4
//
//  Created by Celal Aslan on 2018-04-30.
//  Copyright © 2018 Celal Aslan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DiceCollector : NSObject
@property (nonatomic) NSMutableArray *dice;

-(void) roll;
-(void) reset;
-(int)score;
//-(void) holdDieAtIndex:(NSInteger)index;
@end
