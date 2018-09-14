//
//  main.m
//  Lab10
//
//  Created by 小島　渚 on 2018-09-14.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePayService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSInteger randomDoller = arc4random_uniform(900)+100;
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%ld Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon , 4: Apple", randomDoller);
        NSInteger option = [[InputHandler getUserInput: @"\nYour Option"] integerValue];
        
        PaymentGateway *pg = [PaymentGateway new];
        PaypalPaymentService *paypal = [PaypalPaymentService new];
        StripePaymentService *stripe = [StripePaymentService new];
        AmazonPaymentService *amazon = [AmazonPaymentService new];
        ApplePayService *apple = [ApplePayService new];
        
        switch (option) {
            case 1:
                pg.delegate = paypal;
                break;
            case 2:
                pg.delegate = stripe;
                break;
            case 3:
                pg.delegate = amazon;
                break;
            case 4:
                pg.delegate = apple;
                break;
                
            default:
                break;
        }
        
        [pg processPayment:randomDoller];
        
    }
    return 0;
}

