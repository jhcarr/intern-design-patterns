//
//  ViewController.h
//  StateExample
//
//  Created by Justin Carr on 7/24/13.
//  Copyright (c) 2013 Justin Carr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UITextField * userInput;
    UIButton * doneButton;
    UILabel * outputMessage;
    UISegmentedControl * actionMode;
}
@property (nonatomic, strong) IBOutlet UITextField * userInput;
@property (nonatomic, strong) IBOutlet UIButton * doneButton;
@property (nonatomic, strong) IBOutlet UILabel * outputMessage;
@property (nonatomic, strong) IBOutlet UISegmentedControl * actionMode;

-(void)specifyStartLevel;

@end
