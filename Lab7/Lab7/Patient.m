//
//  Patient.m
//  Lab7
//
//  Created by 小島　渚 on 2018-09-12.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@interface Patient(){
    @private
    Boolean healthCard;
    
}
@end

@implementation Patient
- (instancetype)initWithName: (NSString *) name andAge: (NSUInteger)age andSympton: (NSString*) sympton andHealthCard:(Boolean)card
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        healthCard = card;
    }
    return self;
}

-(Boolean) visitDoctor:(Doctor *)doctor {
    return [doctor acceptPatient: self withHealthCard: healthCard];
}

-(void) requestMedication: (Doctor *)doctor {
    // doctor checking if self(patient) is in the patient list
    if([doctor prescribeMedication:self]){
        NSLog(@"Got the medication");
    }else {
        NSLog(@"Rejected");
    }
}
@end
