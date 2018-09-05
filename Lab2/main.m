//
//  main.m
//  Lab2
//
//  Created by 小島　渚 on 2018-09-05.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"  //object作るためにimport
#import "Box.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Box *box1 = [[Box alloc] initWithWidth:10 andHeight:10 andlength:10];
        Box *box2 = [[Box alloc] initWithWidth:5 andHeight:5 andlength:5];
        
        NSLog(@"%.2f", [box1 volume]);
        NSLog(@"%.2f", [box1 ratio: box2]);
        
        //create Student object
//        Student *student1 = [[Student alloc]
//                             initWithId:(1) andName:@"Nagisa" andCountry:@"Japan"];
//
////        NSLog(@"%@", [student1 getName]);
//
//        NSLog(@"%d", [student1 identification]);
//
//
//        NSLog(@"%@", [student1 name]);
    
        
        
    }
    return 0;
}
