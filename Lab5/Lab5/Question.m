//
//  AdditionQuestion.m
//  Lab3-part1
//
//  Created by 小島　渚 on 2018-09-06.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import "Question.h"

@implementation Question
//default constructor
- (instancetype)init
{
    self = [super init];
    if (self) {
        //generate two random integers using arc4random_uniform
        
        _leftValue = arc4random_uniform(90)+10;
        _rightValue = arc4random_uniform(90) + 10;
        _startTime = [NSDate date];
    }
    return self;
}
-(NSInteger) answer {
    _endTime = [NSDate date];
    return _answer;
}
-(NSTimeInterval) answerTime{
    return [_endTime timeIntervalSinceDate:_startTime];
}

//override by subclassess
-(void) generateQuestion {
    
}

@end


