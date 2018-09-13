//
//  Prescription.m
//  Lab7
//
//  Created by 小島　渚 on 2018-09-12.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import "Prescription.h"


@implementation Prescription
- (instancetype)initWithDoctorName:(NSString *) doctorName andPatientName:(NSString *) patientName;
{
    self = [super init];
    if (self) {
        _doctorName = doctorName;
        _patientName = patientName;
    }
    return self;
}
@end
