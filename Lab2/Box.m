//
//  Box.m
//  Lab2
//
//  Created by 小島　渚 on 2018-09-05.
//  Copyright © 2018 Nagisa Kojima. All rights reserved.
//

#import "Box.h"

@implementation Box
- (instancetype)initWithWidth:(float) width andHeight:(float) height andlength:(float) length;
{
    self = [super init];
    if (self) {
        _width = width;
        _height = height;
        _length = length;
    }
    return self;
}

// width * height * length = volume box

- (float) volume {
    return _width*_height*_length;
}

- (float) ratio: (Box *) box {
    return [self volume] / [box volume];
}
@end


