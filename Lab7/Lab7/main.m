//
//  main.m
//  Lab7
//
//  Created by 小島　渚 on 2018-09-12.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"
#import "Prescription.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Patient *kenta = [[Patient alloc] initWithName:@"Kenta" andAge:25 andSympton:@"pain" andHealthCard:true];
        Doctor *doctor1 = [[Doctor alloc] initWithName:@"Lee" andSpecialization:@"dentist"];
        Prescription *p1 = [[Prescription alloc]initWithDoctorName:@"Lee" andPatientName: @"Kenta"];
        
        
        
    }
    return 0;
}
