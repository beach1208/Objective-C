//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    if(self.delegate && [self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]){
        if([self.delegate kitchenShouldUpgradeOrder:self]) {
            if([self.delegate respondsToSelector: @selector(kitchenDidMakePizza:)]) {
                [self.delegate kitchenDidMakePizza:[[Pizza alloc]initWithSize:large toppings:toppings]];
                return [[Pizza alloc] initWithSize:large toppings:toppings];
            }
        } else {
            if([self.delegate respondsToSelector: @selector(kitchenDidMakePizza:)]) {
                [self.delegate kitchenDidMakePizza:[[Pizza alloc] initWithSize:large toppings:toppings]];
                return [[Pizza alloc] initWithSize:size toppings:toppings];
            }
        }
    }
    return nil;
}


@end
