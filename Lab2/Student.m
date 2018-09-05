//
//  Student.m
//  Lab2
//
//  Created by 小島　渚 on 2018-09-05.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import "Student.h"

//Class: user defined type(template)
// - properties (attributes) (public,private) public file >>> in h file
//- methods(behaviors)
//propertiesとinstance variablesは違う
//propertiesはgetter setterいらない

@interface Student()

// private property put in interface  @property(nonatomic,assign) int identification;
//can access private property from the same class

@end
    

@implementation Student
 //define private instande variables
//    int _id;
//    NSString *_name;
//    NSString *_country;
    


//public Student(int id,String name,String country){ javaでconstructor作るときのここと同じことしてる
//

//implement methods(including constructor)  constructor = initializer
- (instancetype)initWithId: (int) identification andName: (NSString *) name
                andCountry: (NSString *)country;
{
    self = [super init];
    if (self) {
        _identification = identification;
        _name = name;
        _country = country;
    }
    return self;
}


@end
