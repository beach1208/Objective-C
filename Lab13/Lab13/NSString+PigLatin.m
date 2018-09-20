//
//  NSString+PigLatin.m
//  Lab13
//
//  Created by 小島　渚 on 2018-09-19.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)
-(BOOL)checkVowels:(NSArray *)vowels{
    for(NSString *word in vowels){
        if([self hasPrefix:word]){
            return true;
        }
    }
    return false;
}

-(NSString *)stringByPigLatinization {
    NSArray *clusters = @[@"Ch", @"Sh", @"Sm", @"St", @"Th", @"Ps", @"Ph", @"Pl", @"Gl", @"ch", @"sh", @"sm", @"st", @"th", @"ps", @"ph", @"pl", @"gl"];
    NSArray *vowels = @[@"a",@"i",@"u",@"e",@"o",@"A",@"I",@"U",@"E",@"O"];
    
    NSArray *temp = [self componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    NSMutableArray *result = [NSMutableArray new];
    
    for(NSString *word in temp){
        NSInteger length = word.length;
        if([word checkVowels:vowels]){
            NSString *tempString = [word stringByAppendingString:@"yay"];
            [result addObject:tempString];
        }else if([word checkVowels:clusters]){
            NSString *cluster = [word substringWithRange:NSMakeRange(0, 2)];
            NSString *rest = [word substringWithRange:NSMakeRange(2, length-2)];
            [result addObject:rest];
            [result addObject:cluster];
            [result addObject:@"ay"];
        }else{
            NSString *consonant = [word substringWithRange:NSMakeRange(0, 1)];
            NSString *rest = [word substringWithRange:NSMakeRange(1, length-1)];
            [result addObject:rest];
            [result addObject:consonant];
            [result addObject:@"ay"];
        }
    }
  
    return  [result componentsJoinedByString:@""];
}
@end
