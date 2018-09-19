//
//  DeliveryService.h
//  Lab12
//
//  Created by 小島　渚 on 2018-09-18.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

@interface DeliveryService : NSObject
- (void) deliverPizza:(Pizza *)pizza;
@end
