//
//  UIView+IBAble.h
//  IBAbleExample
//
//  Created by aidenjlee on 2015. 10. 7..
//  Copyright © 2015년 entist. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (IBAble)

@property (nonatomic, assign) IBInspectable BOOL      masksToBounds;
@property (nonatomic, assign) IBInspectable NSInteger cornerRadius;
@property (nonatomic, assign) IBInspectable NSInteger borderWidth;

@property (nonatomic, strong) IBInspectable UIColor   *borderColor;
@property (nonatomic, strong) IBInspectable NSString  *borderColorHexCode;
@property (nonatomic, strong) IBInspectable NSString  *backgroundColorHexCode;

@end
