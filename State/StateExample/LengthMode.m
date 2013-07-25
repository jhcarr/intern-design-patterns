//
//  LengthMode.m
//  StateExample
//
//  Created by Justin Carr on 7/24/13.
//  Copyright (c) 2013 Justin Carr. All rights reserved.
//

#import "LengthMode.h"

@implementation LengthMode

- (NSString *) transform: (NSString *) userInput
{
    return [NSString stringWithFormat:@"%d",[userInput length] ];
}

@end
