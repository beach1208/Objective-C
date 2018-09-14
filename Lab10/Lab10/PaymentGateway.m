//
//  PaymentGateway.m
//  Lab10
//
//  Created by 小島　渚 on 2018-09-14.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void) processPayment:(NSInteger)payAmount{
    if([self.delegate canProcessPayment]){
        [self.delegate processPayment:payAmount];
    }else{
        NSLog(@"I am sorry.Can't accept your payment");
    }
   
}
@end
