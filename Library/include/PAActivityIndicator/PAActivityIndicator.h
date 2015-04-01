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
 * @param view Parent view for activity indicator
 * @param title Title for the activity indicator, set nil
 * for no text
 */
- (id)initInView:(UIView *)view title:(NSString *)title;

/*
 * startLoadingAnimation
 *
 * Discussion:
 *   Starts animation and makes it visible
 */
- (void)startLoadingAnimation;

/*
 * startLoadingAnimation:
 *
 * @param center Center position (x, y) over the superview
 *
 * Discussion:
 *   Starts animation and makes it visible in a desired point
 */
- (void)startLoadingAnimation:(CGPoint)center;

/*
 * stopLoadingAnimation
 *
 * Discussion:
 *   Stops animating and hides it
 */
- (void)stopLoadingAnimation;

/*
 *  color
 *
 *  Discussion:
 *    Sets the background color
 */
@property (nonatomic, strong) UIColor *color;

/*
 *  textColor
 *
 *  Discussion:
 *    Sets the text colour
 */
@property (nonatomic, strong) UIColor *textColor;

/*
 *  textFont
 *
 *  Discussion:
 *    Sets the text font
 */
@property (nonatomic, strong) UIFont *textFont;

/*
 *  cornerRadius
 *
 *  Discussion:
 *    Sets the corner radius for the activity indicator view
 */
@property (nonatomic) CGFloat cornerRadius;

@end
