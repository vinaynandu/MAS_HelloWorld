//
//  MASViewController.h
//  MAS_HelloWorld
//
//  Created by vinay kumar nandu on 8/17/13.
//  Copyright (c) 2013 MobileAppSource. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MAS_HelloWorldView;

@interface MASViewController : UIViewController<UITextFieldDelegate>
{
    
    MAS_HelloWorldView     *_mainView;
}

-(void)clickMethod:(id)sender;
@end
