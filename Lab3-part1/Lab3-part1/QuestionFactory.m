//
//  QuestionFactory.m
//  Lab3-part1
//
//  Created by 小島　渚 on 2018-09-10.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory
- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionTypes = @[@"AdditionQuestion",@"SubstractQuestion",@"MultiplyQuestion",@"DividingQuestion"];
    }
    return self;
}

-(Question *) generateRandomQuestion {
    //return an instance of - + * / Question Object
    NSString *type = [_questionTypes objectAtIndex:arc4random_uniform(4)];
    
    //AdditionQuestion, SubstractQuestion,MultipleQuestion,DividingQuestion
    //[[AdditionalQuestion alloc]init]
    return [[NSClassFromString(type)alloc]init];
}
@end
