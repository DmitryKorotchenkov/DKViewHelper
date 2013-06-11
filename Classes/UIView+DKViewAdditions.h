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

+ (void)animateFromCurrentStateWithDuration:(NSTimeInterval)duration animations:(void (^)())animations NS_AVAILABLE_IOS(4_0);

+ (void)animateFromCurrentStateWithDuration:(NSTimeInterval)duration animations:(void (^)(void))animations completion:(void (^)(BOOL finished))completion NS_AVAILABLE_IOS(4_0);

@end