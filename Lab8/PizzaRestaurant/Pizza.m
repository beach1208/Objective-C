//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by 小島　渚 on 2018-09-13.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza
- (instancetype)initWithSize: (PizzaSize) size toppings:(NSArray *) toppings
{
    self = [super init];
    if (self) {
        _size = size;
        _toppings = toppings;
    }
    return self;
}

//constructor
+ (Pizza *) largePepperoni {
    return [[Pizza alloc]initWithSize:large toppings:@[@"pepperoni",@"cheese",@"ham"]];
}

+(Pizza *) meatLoverWithSize:(PizzaSize)size {
    return [[Pizza alloc]initWithSize:size toppings:@[@"checken",@"bacon",@"ham"]];
}

-(NSString *)description{
    NSString *pizzaSize;
    
    switch (_size) {
        case 0:
            pizzaSize = @"Small";
            break;
        case 1:
            pizzaSize = @"Medium";
            break;
        case 2:
            pizzaSize = @"Large";
            break;
            
        default:
            break;
    }
    return [NSString stringWithFormat:@"Size: %@,Toppings: %@, %@, %@",pizzaSize,_toppings[0],_toppings[1],_toppings[2]];
}
@end
