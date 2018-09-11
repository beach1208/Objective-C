//
//  Dice.h
//  Lab6
//
//  Created by 小島　渚 on 2018-09-11.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject
@property (nonatomic,assign) NSInteger faceValue;
@property (nonatomic,assign) Boolean held;

+(instancetype) dice;
-(void) roll;

@end
