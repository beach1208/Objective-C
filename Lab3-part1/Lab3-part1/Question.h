//
//  AdditionQuestion.h
//  Lab3-part1
//
//  Created by 小島　渚 on 2018-09-06.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
@interface Question : NSObject
@property (nonatomic, strong) NSString *question;
@property (nonatomic, assign) NSInteger answer;
@property (nonatomic, assign) NSInteger leftValue;
@property (nonatomic, assign) NSInteger rightValue;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;

-(NSTimeInterval) answerTime;
-(void) generateQuestion;


@end
