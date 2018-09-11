//
//  main.m
//  Lab6
//
//  Created by 小島　渚 on 2018-09-11.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        GameController *player1 = [GameController new];
        while (TRUE) {
            NSString *input = [InputHandler getUserInputWithLength:10 withPrompt:
                               @"\n'roll' to roll the dice \n'hold' to hold the dice \n'unhold' to unhold the dice \n'reset' to reset the held dice \n'holdall' to hold all the dice\n'quit' to quit the game"];
        
            //roll, hold, reset,display,quit
        if ([input isEqualToString:@"roll"]) {
            
            [player1 roll];
            [player1 displayCurrentDeck];
        
        }else if([input isEqualToString:@"hold"]){
            NSString *holdNum = [InputHandler getUserInputWithLength:10 withPrompt:@"\n Enter the number to hold"];
            NSInteger holdNumInt = [holdNum intValue];
            [player1 holdDie:holdNumInt];
            [player1 displayCurrentDeck];
            [player1 displayScore];
        
        }else if([input isEqualToString:@"unhold"]){
            NSString *unholdNum = [InputHandler getUserInputWithLength:10 withPrompt:@"\n Enter the number to unhold"];
            NSInteger unholdNumInt = [unholdNum intValue];
            Dice *die = [player1.displayDice objectAtIndex: unholdNumInt -1];
            if([die held]){
                [die setHeld:FALSE];
            }else {
                NSLog(@"It's held already");
            }
            [player1 displayCurrentDeck];
            [player1 displayScore];
        }else if([input isEqualToString:@"reset"]){
            [player1 resetDice];
            [player1 displayCurrentDeck];
            [player1 displayScore];
        }else if([input isEqualToString:@"holdall"]){
            [player1 holdAll];
            [player1 displayCurrentDeck];
            [player1 displayScore];
        }else if([input isEqualToString:@"quit"]){
            break;
        }
        }
        
       
    }
    return 0;
}
