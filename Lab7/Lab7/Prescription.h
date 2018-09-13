//
//  Prescription.h
//  Lab7
//
//  Created by 小島　渚 on 2018-09-12.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

@interface Prescription : NSObject
@property (nonatomic,strong) NSString *doctorName;
@property (nonatomic,strong) NSString *patientName;
- (instancetype)initWithDoctorName:(NSString *) doctorName andPatientName:(NSString *) patientName;

@end
