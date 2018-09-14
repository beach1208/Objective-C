//
//  PaypalPaymentService.m
//  Lab10
//
//  Created by 小島　渚 on 2018-09-14.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

-(void) processPayment:(NSInteger)payAmount{
    NSLog(@"Paypal Payment Amount $%ld",payAmount);
}

- (BOOL) canProcessPayment {
    int number = arc4random_uniform(2);
    if(number == 0){
        return  NO;
    }
    return YES;
}

@end
