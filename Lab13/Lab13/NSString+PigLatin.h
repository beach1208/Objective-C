//
//  NSString+PigLatin.h
//  Lab13
//
//  Created by 小島　渚 on 2018-09-19.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (PigLatin)
-(BOOL)checkVowels:(NSArray *)vowels;
-(NSString *)stringByPigLatinization;
@end
