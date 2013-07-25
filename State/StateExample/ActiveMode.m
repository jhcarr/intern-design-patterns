//
//  ActiveMode.m
//  StateExample
//
//  Created by Justin Carr on 7/24/13.
//  Copyright (c) 2013 Justin Carr. All rights reserved.
//

#import "ActiveMode.h"
#import "UppercaseMode.h"
#import "LowercaseMode.h"
#import "LengthMode.h"

@implementation ActiveMode

id currentMode;

- (void) changeMode: (int) modeKey
{
    switch (modeKey) {
        case 0:
            currentMode = [[UppercaseMode alloc] init];
            break;
        case 1:
            currentMode = [[LowercaseMode alloc] init];
            break;
        default:
            currentMode = [[LengthMode alloc] init];
            break;
    }
}

- (NSString *) transform:(NSString *)userInput
{
    return [currentMode transform:userInput];
}

@end
