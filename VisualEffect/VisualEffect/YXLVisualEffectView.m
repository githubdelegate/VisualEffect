//
//  YXLVisualEffectView.m
//  YXLiveKit
//
//  Created by zhangyun on 27/10/2016.
//  Copyright © 2016 YIXIA. All rights reserved.
//

#import "YXLVisualEffectView.h"
#import "YXLVisualEffectView+Effect.h"

@implementation YXLVisualEffectView

- (instancetype)init{
    if (self = [super init]) {
        _blurEffect = [[NSClassFromString(@"_UICustomBlurEffect") alloc] init];
    }
    return self;
}

- (void)effectWithColor:(UIColor*)color blurRadius:(CGFloat)radius alpha:(CGFloat)alpha{
        self.colorTint = color;
        self.blurRadius = radius;
        self.colorTintAlpha = alpha;
        self.scale = 1;
}

- (UIColor *)colorTint{
    return [self p_valueForKey:@"colorTint"];
}

- (void)setColorTint:(UIColor *)colorTint{
    [self p_setValue:colorTint forKey:@"colorTint"];
}

- (CGFloat)blurRadius{
    return  [(NSNumber *)[self p_valueForKey:@"blurRadius"] floatValue];
}

- (void)setBlurRadius:(CGFloat)blurRadius{
    [self p_setValue:[NSNumber numberWithFloat:blurRadius] forKey:@"blurRadius"];
}

- (CGFloat)colorTintAlpha{
    return [(NSNumber *)[self p_valueForKey:@"colorTintAlpha"] floatValue];
}

- (void)setColorTintAlpha:(CGFloat)colorTintAlpha{
    [self p_setValue:[NSNumber numberWithFloat:colorTintAlpha] forKey:@"colorTintAlpha"];
}

- (void)setScale:(CGFloat)scale{
    [self p_setValue:[NSNumber numberWithFloat:scale] forKey:@"scale"];
}

- (CGFloat)scale{
    return [(NSNumber *)[self p_valueForKey:@"scale"] floatValue];
}


@end
