//
//  ScoreKeeper.m
//  Lab3-part1
//
//  Created by 小島　渚 on 2018-09-06.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init
{
    self = [super init];
    if (self) {
        _rightCount = 0;
        _wrongCount = 0;
    }
    return self;
}

- (void) usersScoreDisplay{

    float percent = (float) _rightCount / (_rightCount+ _wrongCount)*100;
    NSLog(@"score: %ld right , %ld wrong,------%.2f%%", _rightCount, _wrongCount,percent);
}
@end
