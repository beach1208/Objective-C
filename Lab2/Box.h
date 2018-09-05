//
//  Box.h
//  Lab2
//
//  Created by 小島　渚 on 2018-09-05.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject
@property(nonatomic,assign) float width;
@property(nonatomic,assign) float height;
@property(nonatomic,assign) float length;

- (instancetype)initWithWidth:(float) width andHeight:(float) height andlength:(float) length;
- (float) volume;
- (float) ratio: (Box *) box;

@end



