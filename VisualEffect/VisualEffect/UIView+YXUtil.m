//
//  UIView+Util.m
//  YXLiveVideoApp
//
//  Created by zhangyun on 16/6/16.
//  Copyright © 2016年 YIXIA. All rights reserved.
//

#import "UIView+YXUtil.h"
#import "YXLVisualEffectView.h"

@implementation UIView (Util)

- (void)addYXLBlurEffectWithColor:(UIColor *)color blurRadius:(CGFloat)radius alpha:(CGFloat)alpha{
    YXLVisualEffectView *effectV = [[YXLVisualEffectView alloc] init];
    [self insertSubview:effectV atIndex:0];
    effectV.frame = self.bounds;
    [effectV effectWithColor:color blurRadius:radius alpha:alpha];
}
@end
