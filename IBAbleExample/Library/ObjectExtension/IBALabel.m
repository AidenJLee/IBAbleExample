//
//  IBALabel.m
//  IBAbleExample
//
//  Created by aidenjlee on 2015. 10. 7..
//  Copyright © 2015년 entist. All rights reserved.
//

#import "IBALabel.h"

@interface IBALabel ()

@property (nonatomic, strong) CALayer *layerTop;
@property (nonatomic, strong) CALayer *layerLeft;
@property (nonatomic, strong) CALayer *layerBottom;
@property (nonatomic, strong) CALayer *layerRight;

@end

@implementation IBALabel

@synthesize lineTop = _lineTop;
@synthesize lineLeft = _lineLeft;
@synthesize lineBottom = _lineBottom;
@synthesize lineRight = _lineRight;

@synthesize lineWidth = _lineWidth;
@synthesize lineColor = _lineColor;


#pragma mark - add Line Layer

-(void)layoutSubviews {
    
    [super layoutSubviews];
    [self updateLineView];
    
}

- (void)updateLineView {
    
    [self hiddenPreviousLines];
    if (self.lineTop) {
        
        if (!self.layerTop) {
            self.layerTop = [CALayer layer];
            self.layerTop.name = @"topLine";
            
            if (![self.layer.sublayers containsObject:self.layerTop]) {
                [self.layer addSublayer:self.layerTop];
            }
            
        }
        
        self.layerTop.backgroundColor = [self.lineColor CGColor];
        self.layerTop.frame = CGRectMake(0, 0, self.frame.size.width, self.lineWidth);
        self.layerTop.hidden = NO;
    }
    if (self.lineLeft) {
        
        if (!self.layerLeft) {
            self.layerLeft = [CALayer layer];
            self.layerLeft.name = @"leftLine";
            
            if (![self.layer.sublayers containsObject:self.layerLeft]) {
                [self.layer addSublayer:self.layerLeft];
            }
            
        }
        
        self.layerLeft.backgroundColor = [self.lineColor CGColor];
        self.layerLeft.frame = CGRectMake(0, 0, self.lineWidth, self.frame.size.height);
        self.layerLeft.hidden = NO;
    }
    if (self.lineBottom) {
        
        if (!self.layerBottom) {
            self.layerBottom = [CALayer layer];
            self.layerBottom.name = @"bottomLine";
            
            if (![self.layer.sublayers containsObject:self.layerBottom]) {
                [self.layer addSublayer:self.layerBottom];
            }
            
        }
        
        self.layerBottom.backgroundColor = [self.lineColor CGColor];
        self.layerBottom.frame = CGRectMake(0, self.frame.size.height-self.lineWidth, self.frame.size.width, self.lineWidth);
        self.layerBottom.hidden = NO;
    }
    if (self.lineRight) {
        
        if (!self.layerRight) {
            self.layerRight = [CALayer layer];
            self.layerRight.name = @"rightLine";
            
            if (![self.layer.sublayers containsObject:self.layerRight]) {
                [self.layer addSublayer:self.layerRight];
            }
            
        }
        
        self.layerRight.backgroundColor = [self.lineColor CGColor];
        self.layerRight.frame = CGRectMake(self.frame.size.width - self.lineWidth, 0, self.lineWidth, self.frame.size.height);
        self.layerRight.hidden = NO;
    }
    
}

- (void)hiddenPreviousLines{
    
    self.layerTop.hidden = YES;
    self.layerLeft.hidden = YES;
    self.layerBottom.hidden = YES;
    self.layerRight.hidden = YES;
    
}


#pragma mark - Getter/Setter

- (BOOL)lineTop {
    return _lineTop;
}

- (void)setLineTop:(BOOL)lineTop {
    _lineTop = lineTop;
    [self updateLineView];
}

- (BOOL)lineLeft {
    return _lineLeft;
}

- (void)setLineLeft:(BOOL)lineLeft {
    _lineLeft = lineLeft;
    [self updateLineView];
}

- (BOOL)lineBottom {
    return _lineBottom;
}

- (void)setLineBottom:(BOOL)lineBottom {
    _lineBottom = lineBottom;
    [self updateLineView];
}

- (BOOL)lineRight {
    return _lineRight;
}

- (void)setLineRight:(BOOL)lineRight {
    _lineRight = lineRight;
    [self updateLineView];
}

- (CGFloat)lineWidth {
    return _lineWidth;
}

- (void)setLineWidth:(CGFloat)lineWidth {
    _lineWidth = lineWidth;
    [self updateLineView];
}

- (UIColor *)lineColor {
    return _lineColor;
}

- (void)setLineColor:(UIColor *)lineColor {
    _lineColor = lineColor;
    [self updateLineView];
}

@end
