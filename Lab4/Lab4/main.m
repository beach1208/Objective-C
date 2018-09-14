//
//  main.m
//  Lab4
//
//  Created by 小島　渚 on 2018-09-07.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @aut/Users/nagi/Desktop/objective-c/Lab10/Lab10/main.moreleasepool {
        ContactList *contactList = [ContactList new];
        InputHandler *inputHistory = [InputHandler new];
        
        while(TRUE){
            NSString *menu = @"\nWhat would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nshow - show the details\nfind - find the details\nhistory - Show History\nquit - Exit Application";

            NSString *option = [InputHandler getUserInputWithLength:20 withPrompt:menu];
            if([option isEqualToString:@"quit"]){
                break;
            }else if([option isEqualToString:@"new"]){
                [[inputHistory inputHistory]addObject:option];
                
                //1 get user input name and email
                NSString *name = [InputHandler getUserInputWithLength:255 withPrompt:@"Enter the name"];
                 NSString *email = [InputHandler getUserInputWithLength:255 withPrompt:@"Enter the email"];
                
                if([contactList findDuplicate:email] == TRUE){
                    NSLog(@"This Email already exists");
                }else{
                    //2 create a contact object based on the user unput
                    contact *newContact = [[contact new]initWithName:name andEmail:email];
                    
                    //3 and add to the contact list of ContactList object
                    [contactList addContact:newContact];
                }
                
                
            }else if([option isEqualToString:@"list"]){
                [[inputHistory inputHistory]addObject:option];
                NSLog(@"%@", contactList);
            }else if([option isEqualToString:@"show"]){
                [[inputHistory inputHistory]addObject:option];
                //get user input
                 NSString *indexString = [InputHandler getUserInputWithLength:255 withPrompt:@"Enter the index number"];
                int indexNumber = [indexString intValue];
                NSInteger contactCount = [[contactList contactList] count];
                //if index number is match with contact list display
                if (indexNumber > contactCount - 1 || indexNumber < 0) {
                    NSLog(@"The number you entered is invalid.");
                } else {
                    contact *contactIndexList = [contactList contactList][indexNumber];
                    NSLog(@"%@", contactIndexList);
                }
            }else if([option isEqualToString:@"find"]){
                [[inputHistory inputHistory]addObject:option];
                NSString *searchWord = [InputHandler getUserInputWithLength:255 withPrompt:@"Enter the search word"];
                contact *result = [contactList findContact:searchWord];
                if(result != nil){
                    NSLog(@"<%@> (%@)",[result name],[result email]);
                }else{
                      NSLog(@"%@", @"Not found");
                }
            }else if([option isEqualToString:@"history"]){
                NSLog(@"%@", inputHistory);
                [[inputHistory inputHistory]addObject:option];
            }
        
    }
    return 0;
}
}
