//
//  LowercaseMode.m
//  StateExample
//
//  Created by Justin Carr on 7/24/13.
//  Copyright (c) 2013 Justin Carr. All rights reserved.
//

#import "LowercaseMode.h"

@implementation LowercaseMode

- (NSString *) transform:(NSString *)inputString
{
    return [inputString lowercaseString];
}

@end
