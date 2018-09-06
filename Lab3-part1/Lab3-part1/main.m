//
//  main.m
//  Lab3-part1
//
//  Created by 小島　渚 on 2018-09-06.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        ScoreKeeper *finalScore = [ScoreKeeper new];
      
        while(gameOn){
//            AdditionQuestion *q = [[AdditionQuestion alloc]init];  //calling default constructor
            AdditionQuestion *q = [AdditionQuestion new]; // shorter version of alloc init
           
            
             NSString *userAnswer = [InputHandler getUserInputWithLength:10 withPrompt:[q question]];

            NSInteger userAnsInt = [userAnswer integerValue];
            
            if([userAnswer isEqualToString:@"quit"]) {
                gameOn = NO;
                break;
            }
            
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
