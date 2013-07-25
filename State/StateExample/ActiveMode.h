//
//  ActiveMode.h
//  StateExample
//
//  Created by Justin Carr on 7/24/13.
//  Copyright (c) 2013 Justin Carr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ActiveMode : NSObject

- (NSString *) transform: (NSString *) userInput;
- (void) changeMode: (int) modeKey;

@end
