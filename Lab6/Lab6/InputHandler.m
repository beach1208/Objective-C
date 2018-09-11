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

+ (NSString *)getUserInputWithLength: (int) maxLength withPrompt: (NSString *) prompt{
    if(maxLength <1){
        maxLength = 255;
    }
    
    NSLog(@"%@",prompt);
    char inputChars[maxLength];
    const char *cstring = fgets(inputChars,maxLength,stdin);
    NSString *result = [NSString stringWithCString: cstring encoding: NSUTF8StringEncoding];
    NSCharacterSet *whitespaceAndNewLine = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    
    return [result stringByTrimmingCharactersInSet: whitespaceAndNewLine];
    
}

@end
