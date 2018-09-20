//
//  main.m
//  Lab13
//
//  Created by 小島　渚 on 2018-09-19.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *inputString = [InputHandler getUserInput:@"> "];
        NSString *pigLatin = [inputString stringByPigLatinization];
        NSLog(@"%@",pigLatin);
    }
    return 0;
}
