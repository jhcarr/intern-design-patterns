//
//  ViewController.m
//  StateExample
//
//  Created by Justin Carr on 7/24/13.
//  Copyright (c) 2013 Justin Carr. All rights reserved.
//

#import "ViewController.h"
#import "ActiveMode.h"

@interface ViewController ()

@end

@implementation ViewController

// Connect UI data
@synthesize userInput, actionMode, outputMessage, doneButton;

static ActiveMode * mode;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    static ActiveMode * initializer = nil;
    if (!initializer)
    {
        initializer = [[ActiveMode alloc] init];
        mode = initializer;
    }
    
    // Connect UI components
    [actionMode addTarget:self action:(@selector(switchMode)) forControlEvents:UIControlEventValueChanged];
    [self switchMode];
    [doneButton addTarget:self action:@selector(printToScreen) forControlEvents:UIControlEventTouchUpInside];
}

- (void) switchMode
{
    int modeKey = -1;
    modeKey = [actionMode selectedSegmentIndex];
    [mode changeMode:modeKey];
}

- (void) printToScreen
{
    [outputMessage setText:[mode transform:[userInput text]]];
//    [outputMessage setText:@"Hello, World!"];
}

#pragma UITextField

-(void)specifyStartLevel
{
    [userInput setText:@""];
    [userInput becomeFirstResponder];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
