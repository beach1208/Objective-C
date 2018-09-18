//
//  CheeseManager.m
//  PizzaRestaurant
//
//  Created by 小島　渚 on 2018-09-17.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "CheeseManager.h"

@implementation CheeseManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    return YES;
}
- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return YES;
}
- (void)kitchenDidMakePizza:(Pizza *)pizza{
    NSLog(@"Thank you!");
}

@end
