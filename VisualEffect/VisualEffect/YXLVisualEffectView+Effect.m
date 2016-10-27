//
//  YXLVisualEffectView+Effect.m
//  YXLiveKit
//
//  Created by zhangyun on 27/10/2016.
//  Copyright © 2016 YIXIA. All rights reserved.
//

#import "YXLVisualEffectView+Effect.h"

@implementation YXLVisualEffectView (Effect)

- (id)p_valueForKey:(NSString *)key{
    return [self.blurEffect valueForKeyPath:key];
}

- (void)p_setValue:(id)value forKey:(NSString *)key{
    [self.blurEffect setValue:value forKeyPath:key];
    self.effect = self.blurEffect;
}
@end
