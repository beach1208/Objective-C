//
//  SubstractQuestion.m
//  Lab3-part1
//
//  Created by 小島　渚 on 2018-09-10.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import "SubstractQuestion.h"

@implementation SubstractQuestion
- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [self generateQuestion];
    }
    return self;
}


-(void) generateQuestion {
    super.question = [NSString stringWithFormat:@"%ld + %ld",(long)super.leftValue,(long)super.rightValue];
    
    //get the answer assign to answer
    super.answer = super.leftValue - super.rightValue;
}
@end
