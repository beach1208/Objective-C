
//
//  QuestionManager.m
//  Lab3-part1
//
//  Created by 小島　渚 on 2018-09-10.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager
- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray array];
    }
    return self;
}

- (NSString *) timeOutput {
    Question *last = [_questions objectAtIndex:[_questions count] -1];
   Question *first =  [_questions objectAtIndex:0];
    
    NSTimeInterval timeInterval = [[last endTime] timeIntervalSinceDate:[first startTime]];
    long second = lroundf(timeInterval);
    
    return  [NSString stringWithFormat:@"total time:%lus average time: %lus",second,second /
             [_questions count]];
    
    return @"";
}
@end
