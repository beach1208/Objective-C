//
//  QuestionFactory.h
//  Lab3-part1
//
//  Created by 小島　渚 on 2018-09-10.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
@interface QuestionFactory : NSObject
@property(nonatomic,strong) NSArray *questionTypes;
- (Question *) generateRandomQuestion;

@end
