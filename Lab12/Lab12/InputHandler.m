//
//  InputHandler.m
//  Lab3-part1
//
//  Created by 小島　渚 on 2018-09-06.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

//function class

+ (NSString *)getUserInput:(NSString *) prompt{
    char inputChars[255];
    NSLog(@"%@",prompt);
    fgets(inputChars, 255, stdin);
    NSString *result = [NSString stringWithUTF8String:inputChars];
    NSCharacterSet *whitespaceAndNewLine = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    
    return [result stringByTrimmingCharactersInSet: whitespaceAndNewLine];
    
}

@end
