//
//  GameController.m
//  Lab6
//
//  Created by 小島　渚 on 2018-09-11.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"
#define MAX_ROLL 5
@interface GameController()
{
@private int rollCount;
}
@end

@implementation GameController
//has to hold 5 dice objects

- (instancetype)init
{
    self = [super init];
    if (self) {
        _displayDice = [NSMutableArray arrayWithObjects:[Dice dice],[Dice dice]
                        ,[Dice dice] ,[Dice dice] ,[Dice dice],nil];
        rollCount = MAX_ROLL;
    }
    return self;
}

- (void) roll {
    //if i have more than one roll count left, I can roll all five dice in the array
    //except for the ones that are held by user
    if(rollCount > 0){
        for (Dice *die in _displayDice) {
            if(![die held]){
                [die roll];
            }
        }
        rollCount--;
        NSLog(@"Remaing Rolls: %d",rollCount);
    }else {
        NSLog(@"You can't roll more than %d times.",MAX_ROLL);
    }
}


-(void) displayCurrentDeck {
    NSMutableString *currentDeck = [NSMutableString string];
    for (Dice *die in _displayDice) {
        [currentDeck appendFormat:@" %@",[die description]];
    }
    NSLog(@"%@",currentDeck);
}

-(void) holdDie:(NSUInteger) dieIndex {
    // check if the die is already held or not
    //if not hold it
    //change the held property of the die
    if(dieIndex > 0 && dieIndex < 6){
        Dice *die = [_displayDice objectAtIndex: dieIndex -1];
        if([die held]){
            [die setHeld:FALSE];
        }else {
            [die setHeld:TRUE];
        }
    }else{
        NSLog(@"Type the number again");
    }
    
}


-(void) resetDice {
    //1. iterate through each die , unhold every die
    for (Dice *die in _displayDice){
        if([die held] == TRUE){
            [die setHeld:FALSE];
        }
    }
}

-(void) holdAll {
    // 1. iterate throuch each die,hold each die
    //if rowCount == 0 hold it.
    for (Dice *die in _displayDice){
        if(rollCount == 0){
            [die setHeld:TRUE];
        }
    }
    
}

-(void) displayScore {
    // 1. check if the game is over
    // if game over ("game over")
    // 2. if its not game over
    //print current deck and score(sum of faceValue)
    int sum = 0;
    for (int i = 0; i < _displayDice.count; i++) {
        if ([_displayDice[i] held]) {
            sum += [_displayDice[i] faceValue];
        }
    }
    if(rollCount == 0){
        NSLog(@"GAME OVER");
        NSLog(@"Score: %d", sum);
    }else {
        NSLog(@"Current Score: %d", sum);
    }
    
}
@end
