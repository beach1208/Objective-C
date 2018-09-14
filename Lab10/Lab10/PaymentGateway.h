//
//  PaymentGateway.h
//  Lab10
//
//  Created by 小島　渚 on 2018-09-14.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>

-(void) processPayment:(NSInteger *) payAmount;
- (BOOL) canProcessPayment;

@end

@interface PaymentGateway : NSObject

@property (nonatomic,weak) id<PaymentDelegate> delegate;

-(void) processPayment:(NSInteger)payAmount;

@end
