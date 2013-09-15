//
//  MASViewController.m
//  MAS_HelloWorld
//
//  Created by vinay kumar nandu on 8/17/13.
//  Copyright (c) 2013 MobileAppSource. All rights reserved.
//

#import "MASViewController.h"
#import "MAS_HelloWorldView.h"

@interface MASViewController ()

@end

@implementation MASViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)loadView
{
    _mainView =[[MAS_HelloWorldView alloc] initWithTarget:self];
    self.title = @"HelloWorld";
    
    [_mainView createUIViewElements];
    
    self.view = _mainView;
}

-(void)clickMethod:(id)sender
{
    _mainView.helloWorldLbl.text= _mainView.inputTextField.text;
    
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
