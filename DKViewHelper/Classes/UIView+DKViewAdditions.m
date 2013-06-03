//
// Created by Dmitry Korotchenkov on 01.06.13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "UIView+DKViewAdditions.h"


@implementation UIView (DKViewAdditions)

- (CGFloat)top {
    return self.frame.origin.y;
}

- (void)setTop:(CGFloat)top {
    CGRect frame = self.frame;
    frame.origin.y = top;
    self.frame = frame;
}

- (CGFloat)bottom {
    return self.top + self.height;
}

- (void)setBottom:(CGFloat)bottom {
    self.top = bottom - self.height;
}

- (CGFloat)left {
    return self.frame.origin.x;
}

- (void)setLeft:(CGFloat)left {
    CGRect frame = self.frame;
    frame.origin.x = left;
    self.frame = frame;
}

- (CGFloat)right {
    return self.left + self.width;
}

- (void)setRight:(CGFloat)right {
    self.left = right - self.width;
}

-(CGPoint)innerCenter {
    return CGPointMake(self.width/2, self.height/2);
}

-(CGFloat)innerCenterX {
    return self.innerCenter.x;
}

-(CGFloat)innerCenterY {
    return self.innerCenter.y;
}

- (CGFloat)centerX {
    return self.center.x;
}

- (void)setCenterX:(CGFloat)centerX {
    self.center = CGPointMake(centerX, self.centerY);
}

- (CGFloat)centerY {
    return self.center.y;
}

- (void)setCenterY:(CGFloat)centerY {
    self.center = CGPointMake(self.centerX, centerY);
}

- (CGFloat)height {
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

#pragma mark Animations

+ (void)animateFromCurrentStateWithDuration:(NSTimeInterval)duration animations:(void (^)(void))animations {
    [self animateFromCurrentStateWithDuration:duration animations:animations completion:nil];
}

+ (void)animateFromCurrentStateWithDuration:(NSTimeInterval)duration animations:(void (^)(void))animations completion:(void (^)(BOOL finished))completion {
    [UIView animateWithDuration:duration delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:animations completion:completion];
}

@end