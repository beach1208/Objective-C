//
//  ScoreKeeper.h
//  Lab3-part1
//
//  Created by 小島　渚 on 2018-09-06.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject
@property (nonatomic,assign) NSInteger rightCount;
@property (nonatomic,assign) NSInteger wrongCount;
- (void) usersScoreDisplay;
@end
