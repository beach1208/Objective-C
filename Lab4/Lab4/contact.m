//
//  contact.m
//  Lab4
//
//  Created by 小島　渚 on 2018-09-07.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import "contact.h"

@implementation contact
- (instancetype)initWithName: (NSString *)name andEmail: (NSString *)email
{
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
    }
    return self;
}

-(NSString *)description{
    return [NSString stringWithFormat:@"<%@>, (%@)",self.name,self.email];
}


@end
