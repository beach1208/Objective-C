//
//  main.m
//  Lab12
//
//  Created by 小島　渚 on 2018-09-18.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"
#import "InputHandler.h"
#import "AnchoviesManeger.h"
#import "CheeseManager.h"
#import "DeliveryCar.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        AnchoviesManeger *am = [AnchoviesManeger new];
        CheeseManager *cm = [CheeseManager new];
        DeliveryCar *car = [DeliveryCar new];
        
        while (TRUE) {
            NSString *inputString = [InputHandler getUserInput:@"> "];
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            // "large ham pineapple cheese"
            NSString *size = commandWords[0]; // size
            NSArray *toppings = [commandWords subarrayWithRange:NSMakeRange(1, [commandWords count] - 1)];
            
            NSString *chooseManager = [InputHandler getUserInput:@"Pick a manager:\n 1. Anchovy Manager.\n 2. Cheese Manager\n"];
            
            if([chooseManager isEqualToString:@"1"]) {
                restaurantKitchen.delegate = am;
            } else {
                restaurantKitchen.delegate = cm;
            }
            
            Pizza *pizza;
            pizza = [restaurantKitchen makePizzaWithSize:[Pizza getPizzaSize:size] toppings:toppings];
            [car deliverPizza:pizza];
            
              NSLog(@"%@", pizza);
    }
    return 0;
}
}
