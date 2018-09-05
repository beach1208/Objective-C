//
//  main.m
//  Lab1
//
//  Created by Nagisa Kojima on 2018-09-04.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import <Foundation/Foundation.h>


NSString *getUserInput(NSString *prompt){
    char inputChars[255];
    NSLog(@"%@",prompt);
    fgets(inputChars,255,stdin);
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
    //trim the string, new line and space of Inputstring
    return [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}



int main(int argc, const char * argv[]) {
    @autoreleasepool {

        while (TRUE){
            NSString *option = getUserInput(@"Enter Options 1 to 6: ");
            NSString *input = getUserInput(@"Enter your string:");
            
            if([option isEqualToString:@"1"]) {
                NSLog(@"%@", [input uppercaseString]);
            } else if([option isEqualToString:@"2"]) {
                NSLog(@"%@", [input lowercaseString]);
            }else if([option isEqualToString:@"3"]) {
                int inputInt = [input intValue];
                NSLog(@"%d", inputInt);
            }else if([option isEqualToString:@"4"]){
                NSString *canadianized = [input stringByAppendingString:@",eh?"];
                [NSString stringWithFormat:@"%@/%@",input,@",eh?"];
                NSLog(@"%@", canadianized);
            }else if([option isEqualToString:@"5"]){
                        NSString *last = [input substringFromIndex:[input length]-1];
                        NSLog(@"%@", last);
                
                        if([last isEqualToString:@"?"]){
                            NSLog(@"%@",@"I don't know");
                        }else if([last isEqualToString:@"!"]){
                            NSLog(@"%@",@"Whoa, calm down!");
                        }
            }else if([option isEqualToString:@"6"]){
                        NSString *space = [input stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                         NSLog(@"%@",space);
            }
            
            if([input isEqualToString:@"q"]){
                break;
            }
    }
    return 0;
    }
}
