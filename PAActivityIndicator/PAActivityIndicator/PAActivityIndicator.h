//
//  PAActivityIndicator.h
//  PAActivityIndicator
//
//  Created by PabloAlejandro on 01/04/2015.
//  Copyright (c) 2015 PabloAlejandro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PAActivityIndicator : UIView

/*
 * initInView:title:
 *
 * @param view: View over the animation will appear
 * @param title: Title for the spining animation, set nil
 * for no text
 */
- (id)initInView:(UIView *)view title:(NSString *)title;

- (void)startLoadingAnimation;
- (void)startLoadingAnimation:(CGPoint)center;
- (void)stopLoadingAnimation;

@property (nonatomic, strong) UIColor *color;
@property (nonatomic, strong) UIColor *textColor;
@property (nonatomic, strong) UIFont *textFont;
@property (nonatomic) CGFloat cornerRadius;

@end
