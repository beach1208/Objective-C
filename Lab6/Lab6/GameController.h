//
//  GameController.h
//  Lab6
//
//  Created by 小島　渚 on 2018-09-11.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject

@property (nonatomic,strong) NSMutableArray *displayDice;  //display used dice
-(void) displayCurrentDeck;
- (void) roll;
-(void) holdDie:(NSUInteger) die;
-(void) resetDice;
-(void) holdAll;
-(void) displayScore;
@end
