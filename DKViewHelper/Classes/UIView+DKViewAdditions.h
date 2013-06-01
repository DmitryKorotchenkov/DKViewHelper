//
// Created by Dmitry Korotchenkov on 01.06.13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>

@interface UIView (DKViewAdditions)

@property CGFloat top;
@property CGFloat bottom;
@property CGFloat left;
@property CGFloat right;

@property CGFloat centerX;
@property CGFloat centerY;

@property CGFloat height;
@property CGFloat width;

- (CGPoint)innerCenter;

- (CGFloat)innerCenterX;

- (CGFloat)innerCenterY;

@end