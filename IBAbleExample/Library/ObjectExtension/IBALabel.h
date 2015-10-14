//
//  IBALabel.h
//  IBAbleExample
//
//  Created by aidenjlee on 2015. 10. 7..
//  Copyright © 2015년 entist. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface IBALabel : UILabel

@property (nonatomic, assign) IBInspectable BOOL lineTop;
@property (nonatomic, assign) IBInspectable BOOL lineLeft;
@property (nonatomic, assign) IBInspectable BOOL lineBottom;
@property (nonatomic, assign) IBInspectable BOOL lineRight;

@property (nonatomic, assign) IBInspectable CGFloat lineWidth;
@property (nonatomic, strong) IBInspectable UIColor *lineColor;

@end
