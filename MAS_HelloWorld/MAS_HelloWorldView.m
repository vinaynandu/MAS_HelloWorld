//
//  MAS_HelloWorldView.m
//  MAS_HelloWorld
//
//  Created by vinay kumar nandu on 8/17/13.
//  Copyright (c) 2013 MobileAppSource. All rights reserved.
//

#import "MAS_HelloWorldView.h"
#import "MASViewController.h"
#import <QuartzCore/QuartzCore.h>


@implementation MAS_HelloWorldView
@synthesize clickBtn    =_clickBtn;
@synthesize inputTextField  = _inputTextField;
@synthesize helloWorldLbl   = _helloWorldLbl;

- (id)initWithTarget:(id)inTarget
{
    self = [super init];
    if (self) {
        
        // Initialization code
        _requestTarget      =   inTarget;
        [self setBackgroundColor:[UIColor whiteColor]];
        
    }
    return self;
}

-(void)createUIViewElements
{
    CGRect applicationRect = [[UIScreen mainScreen] bounds];//this is application rect which gives (x,y,width,height) reference to application size.
    self.inputTextField = [[UITextField alloc] initWithFrame:CGRectMake(applicationRect.origin.x+10, applicationRect.origin.y+80, applicationRect.size.width/2, 30)];
    [self addSubview:self.inputTextField];
    self.inputTextField.placeholder = @"enter text";
    self.inputTextField.delegate = _requestTarget;
    self.inputTextField.spellCheckingType=FALSE;
    self.inputTextField.borderStyle = UITextBorderStyleRoundedRect;
    self.inputTextField.layer.cornerRadius = 0.6;
    self.inputTextField.layer.masksToBounds = YES;

    self.inputTextField.backgroundColor = [UIColor groupTableViewBackgroundColor];
    self.clickBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.clickBtn.frame = CGRectMake(self.inputTextField.frame.origin.x+self.inputTextField.frame.size.width+10, self.inputTextField.frame.origin.y, 70, 30);
    [self.clickBtn setTitle:@"Click" forState:UIControlStateNormal];

//    self.clickBtn.titleLabel.text = @"Click";
    [self addSubview:self.clickBtn];
    [self.clickBtn addTarget:_requestTarget action:@selector(clickMethod:) forControlEvents:UIControlEventTouchUpInside];
    
    self.helloWorldLbl = [[UILabel alloc] initWithFrame:CGRectMake(10, self.inputTextField.frame.origin.y+
                                                                   self.inputTextField.frame.size.height+50, applicationRect.size.width-20, 30)];

    [self addSubview:self.helloWorldLbl];
//    self.helloWorldLbl.text = @"HelloWorld";
    self.helloWorldLbl.backgroundColor = [UIColor grayColor];
    
}
@end
