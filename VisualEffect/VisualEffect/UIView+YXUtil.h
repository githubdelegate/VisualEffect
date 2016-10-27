//
//  UIView+Util.h
//  YXLiveVideoApp
//
//  Created by zhangyun on 16/6/16.
//  Copyright © 2016年 YIXIA. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 *  @author zhangyun, 16-06-16 09:06:32
 *
 *  @brief UIView分类
 */
@interface UIView (Util)

/**
 给view添加模糊效果

 @param color  颜色
 @param radius blurRadius
 @param alpha  透明的
 */
- (void)addYXLBlurEffectWithColor:(UIColor *)color blurRadius:(CGFloat)radius alpha:(CGFloat)alpha;
@end
