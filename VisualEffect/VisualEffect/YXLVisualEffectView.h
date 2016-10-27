//
//  YXLVisualEffectView.h
//  YXLiveKit
//
//  Created by zhangyun on 27/10/2016.
//  Copyright © 2016 YIXIA. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 用来显示模糊背景的View，可以修改模糊颜色，透明的，radius
 */
@interface YXLVisualEffectView : UIVisualEffectView
@property (nonatomic,strong) UIBlurEffect  *blurEffect;
@property (nonatomic,strong) UIColor  *colorTint;
@property (nonatomic,assign) CGFloat  colorTintAlpha;
@property (nonatomic,assign) CGFloat  blurRadius;
@property (nonatomic,assign) CGFloat  scale;

- (void)effectWithColor:(UIColor*)color blurRadius:(CGFloat)radius alpha:(CGFloat)alpha;
@end
