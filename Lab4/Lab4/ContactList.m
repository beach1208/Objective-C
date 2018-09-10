//
//  ContactList.m
//  Lab4
//
//  Created by 小島　渚 on 2018-09-07.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contactList = [NSMutableArray new];
    }
    return self;
}

-(void) addContact:(contact *) newContact{
    [_contactList addObject: newContact];
}

-(NSString *)description{
    int count = 0;
    NSMutableString *result = [[NSMutableString alloc]initWithString:@"\n"];
    for (contact *contact in _contactList){
        NSString *contactStr = [NSString stringWithFormat:@"%d: %@\n",count,contact];
        count++;
        [result appendString:contactStr];
    }
    return result;
}

-(contact *) findContact: (NSString *) checkword{
    for(contact *contact in _contactList){
        if([[contact name] isEqualToString:checkword] || [[contact email] isEqualToString:checkword]){
            return contact;
        }
    }
    return nil;
}

-(BOOL)findDuplicate:(NSString *) sameEmail{
    for (contact *contact in _contactList) {
        if([[contact email] isEqualToString:sameEmail]){
            return TRUE;
        }
    }
    return FALSE;
}
@end
