//
//  main.m
//  Lab3-part1
//
//  Created by 小島　渚 on 2018-09-06.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        ScoreKeeper *finalScore = [[ScoreKeeper alloc]init];
        QuestionManager *questionManager = [QuestionManager manager];
        QuestionFactory *questionFactory = [[QuestionFactory alloc]init];
      
        while(gameOn){
//            AdditionQuestion *q = [[AdditionQuestion alloc]init];  //calling default constructor
            Question *q = [questionFactory generateRandomQuestion];
            
            //user Input
        
            NSString *userAnswer = [InputHandler getUserInput:[q question]];

            NSInteger userAnsInt = [userAnswer integerValue];
            
            if([userAnswer isEqualToString:@"quit"]) {
                gameOn = NO;
                break;
            }
            NSString *answer = [NSString stringWithFormat:@"%ld", [q answer]];
            [questionManager addQuestions:q];
            
            if([q answer] == userAnsInt) {
                NSLog(@"Right!");
                [finalScore setRightCount:[finalScore rightCount]+1];
            }
            else{
                NSLog(@"Wrong!");
                 [finalScore setWrongCount:[finalScore wrongCount]+1];
            }
             [finalScore usersScoreDisplay];
        }
       
    }
    return 0;
}
