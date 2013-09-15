//
//  MAS_HelloWorldView.h
//  MAS_HelloWorld
//
//  Created by vinay kumar nandu on 8/17/13.
//  Copyright (c) 2013 MobileAppSource. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MAS_HelloWorldView : UIView
{
    id                          _requestTarget;

    UITextField     *_inputTextField;
    UILabel         *_helloWorldLbl;
    UIButton        *_clickBtn;
}
@property(nonatomic,strong)UITextField     *inputTextField;
@property(nonatomic,strong)UILabel     *helloWorldLbl;
@property(nonatomic,strong)UIButton     *clickBtn;
- (id)initWithTarget:(id)inTarget;
-(void)createUIViewElements;
@end
