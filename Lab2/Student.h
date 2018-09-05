//
//  Student.h
//  Lab2
//
//  Created by 小島　渚 on 2018-09-05.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
//define public properties
//define public methods

//public constructorをStudent.mから持ってきてこのヘッダーファイルをメインで使う
- (instancetype)initWithId: (int) identification andName: (NSString *) name
                andCountry: (NSString *)country;



@property(nonatomic,assign) int identification;  //ここでgetter setter insance variables取得できる
@property(nonatomic,strong) NSString *name;
@property(nonatomic,strong) NSString *country;

@end
