//
//  PAActivityIndicator.m
//  PAActivityIndicator
//
//  Created by PabloAlejandro on 01/04/2015.
//  Copyright (c) 2015 PabloAlejandro. All rights reserved.
//

#import "PAActivityIndicator.h"

@implementation PAActivityIndicator{
    UIActivityIndicatorView *activity;
    UIView *superview;
    NSString *text;
    UILabel *textLabel;
}

#pragma mark - Private class instances

- (id)init
{
    self = [super init];
    
    if(self) {
        NSAssert(superview, @"Set a superview. Use initInView:title: instead");
    }
    
    return self;
}

- (void)setup
{
    activity = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(40, 18, 0, 0)];
    activity.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhite;
    
    [activity startAnimating];
    
    [self addSubview:activity];
    
    if(text) {
        
        textLabel = [[UILabel alloc] initWithFrame:CGRectMake(5, 25, 70, 35)];
        textLabel.numberOfLines = 0;
        textLabel.text = text;
        textLabel.font = [UIFont fontWithName:@"HelveticaNeue-Medium" size:11];
        textLabel.minimumScaleFactor = .6;
        textLabel.textColor = [UIColor colorWithWhite:1 alpha:.8];
        textLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:textLabel];
        
        self.frame = CGRectMake(0, 0, 80, 60);
    }
    else {
        
        self.frame = CGRectMake(0, 0, 60, 60);
        activity.center = CGPointMake(self.frame.size.width / 2, self.frame.size.height / 2);
    }
    
    self.layer.cornerRadius = 15;
    self.layer.masksToBounds = YES;
    
    self.backgroundColor = [UIColor colorWithWhite:.1 alpha:.8];
}

#pragma mark - Public class instances

- (id)initInView:(UIView *)view title:(NSString *)title
{
    if (self = [super init]) {
        
        superview = view;
        text = title;
        
        [self setup];
    }
    return self;
}

- (void)startLoadingAnimation
{
    if(superview) {
        [superview addSubview:self];
        [self setCenter:superview.center];
    }
}

- (void)startLoadingAnimation:(CGPoint)center
{
    if(superview) {
        [superview addSubview:self];
        [self setCenter:center];
    }
}

- (void)stopLoadingAnimation
{
    [self removeFromSuperview];
}

#pragma mark - Getters and setters

// Background view color
- (void)setColor:(UIColor *)color
{
    self.backgroundColor = color;
}

- (UIColor *)color
{
    return self.backgroundColor;
}

// Text color
- (void)setTextColor:(UIColor *)textColor
{
    textLabel.textColor = textColor;
}

- (UIColor *)textColor
{
    return textLabel.textColor;
}

// Text font
- (void)setTextFont:(UIFont *)textFont
{
    textLabel.font = textFont;
}

- (UIFont *)textFont
{
    return textLabel.font;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    NSAssert(cornerRadius >= 0 && cornerRadius <= MIN(self.bounds.size.height / 2, self.bounds.size.width / 2), @"Corner radius must be within (0, MIN(height / 2, width / 2))");
    
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = cornerRadius > 0 ? YES : NO;
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

@end
