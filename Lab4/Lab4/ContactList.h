//
//  ContactList.h
//  Lab4
//
//  Created by 小島　渚 on 2018-09-07.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "contact.h"
#import "InputHandler.h"

@interface ContactList : NSObject

@property (nonatomic,strong) NSMutableArray *contactList;
@property (nonatomic,strong) NSMutableArray *inputHistory;

-(void) addContact:(contact *) newContact;
-(contact *) findContact: (NSString *) checkword;
-(BOOL)findDuplicate:(NSString *) sameEmail;
@end
