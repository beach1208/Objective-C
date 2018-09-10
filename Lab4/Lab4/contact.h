//
//  contact.h
//  Lab4
//
//  Created by 小島　渚 on 2018-09-07.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface contact : NSObject
@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSString *email;

- (instancetype)initWithName: (NSString *)name andEmail: (NSString *)email;
@end
