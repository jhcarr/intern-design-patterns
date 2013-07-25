//
//  UppercaseMode.m
//  StateExample
//
//  Created by Justin Carr on 7/24/13.
//  Copyright (c) 2013 Justin Carr. All rights reserved.
//

#import "UppercaseMode.h"

@implementation UppercaseMode

- (NSString *) transform: (NSString*) inputString
{
    return [inputString uppercaseString];
}

@end
