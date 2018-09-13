//
//  Patient.h
//  Lab7
//
//  Created by 小島　渚 on 2018-09-12.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;
@interface Patient : NSObject
@property (nonatomic,assign) NSUInteger age; //unsigned integer (all positive number)
@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) NSString *sympton;

- (instancetype)initWithName: (NSString *) name andAge: (NSUInteger)age andSympton: (NSString*) sympton andHealthCard:(Boolean)card;
-(Boolean) visitDoctor:(Doctor *)doctor ;
-(void) requestMedication: (Doctor *)doctor;
@end

