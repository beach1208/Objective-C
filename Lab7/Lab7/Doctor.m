//
//  Doctor.m
//  Lab7
//
//  Created by 小島　渚 on 2018-09-12.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
#import "Prescription.h"

@interface Doctor(){
@private
    NSMutableArray *patientList;
    
}
@end

@implementation Doctor
- (instancetype)initWithName: (NSString *) name andSpecialization: (NSString *)specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        patientList = [NSMutableArray new];
    }
    return self;
}

-(Boolean) acceptPatient: (Patient *) patient withHealthCard: (Boolean)healthCard{
    if(healthCard){
        [patientList addObject:patient];
        NSLog(@"Successfully added to patient List");
        return true;
    }else {
        NSLog(@"We can't accept you without a health card");
        return false;
    }
}

-(Boolean) prescribeMedication:(Patient *) patient{
    if([patientList containsObject:patient]){
        NSLog(@"Medication on the way...");
        //1.check the symptom
        if([patient.sympton isEqualToString:@"pain"]){
            NSLog(@"Prescription for pain is created");
        }
        return true;
    }else {
        NSLog(@"You are not my patient");
        return false;
    }
}
@end
