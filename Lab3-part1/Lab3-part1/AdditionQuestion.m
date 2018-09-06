//
//  AdditionQuestion.m
//  Lab3-part1
//
//  Created by 小島　渚 on 2018-09-06.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion
//default constructor
- (instancetype)init
{
    self = [super init];
    if (self) {
        //generate two random integers using arc4random_uniform
        
        int left = arc4random_uniform(90)+10;
        int right = arc4random_uniform(90) + 10;
       
        //make question string
        
        _question = [NSString stringWithFormat:@"%d + %d",left,right];
        
        //get the answer assign to answer
        
        _answer = left + right;
    }
    return self;
}

@end


