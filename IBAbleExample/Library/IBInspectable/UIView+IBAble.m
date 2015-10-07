//
//  UIView+IBAble.m
//  IBAbleExample
//
//  Created by aidenjlee on 2015. 10. 7..
//  Copyright © 2015년 entist. All rights reserved.
//

#import "UIView+IBAble.h"

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@implementation UIView (IBAble)

#pragma mark - CornerRadius

- (BOOL)masksToBounds {
    return self.layer.masksToBounds;
}

- (void)setMasksToBounds:(BOOL)masksToBounds {
    self.layer.masksToBounds = masksToBounds;
}

- (NSInteger)cornerRadius {
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(NSInteger)cornerRadius {
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = cornerRadius > 0;
}


#pragma mark - Border

- (NSInteger)borderWidth {
    return self.layer.borderWidth;
}

- (void)setBorderWidth:(NSInteger)borderWidth {
    self.layer.borderWidth = borderWidth;
}


#pragma mark - Color & hexCode

- (UIColor *)borderColor {
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor {
    self.layer.borderColor = borderColor.CGColor;
}

- (NSString *)borderColorHexCode {
    return [CIColor colorWithCGColor:self.layer.borderColor].stringRepresentation;
}

- (void)setBorderColorHexCode:(NSString *)borderColorHexCode {
    NSScanner *scanner = [NSScanner scannerWithString:borderColorHexCode];
    unsigned hexNum;
    if (![scanner scanHexInt:&hexNum]) {
        return;
    }
    self.layer.borderColor = UIColorFromRGB(hexNum).CGColor;
}

- (NSString *)backgroundColorHexCode {
    return [CIColor colorWithCGColor:self.backgroundColor.CGColor].stringRepresentation;
}

- (void)setBackgroundColorHexCode:(NSString *)backgroundColorHexCode {
    NSScanner *scanner = [NSScanner scannerWithString:backgroundColorHexCode];
    unsigned hexNum;
    if (![scanner scanHexInt:&hexNum]) {
        return;
    }
    self.backgroundColor = UIColorFromRGB(hexNum);
}

@end
