//
//  PaypalPaymentService.h
//  Lab10
//
//  Created by 小島　渚 on 2018-09-14.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface PaypalPaymentService : NSObject <PaymentDelegate>
-(void) processPayment:(NSInteger)payAmount;
- (BOOL) canProcessPayment;
@end
