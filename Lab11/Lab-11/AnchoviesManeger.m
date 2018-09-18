//
//  AnchoviesManeger.m
//  PizzaRestaurant
//
//  Created by 小島　渚 on 2018-09-17.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "AnchoviesManeger.h"

@implementation AnchoviesManeger

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings
{
    for(int i = 0; i < toppings.count; i++) {
        if([[toppings objectAtIndex:i] isEqualToString:@"anchovy"]){
            return NO;
        }
    }
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
    return NO;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza
{
    
}

@end
