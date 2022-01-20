//
//  XXXProxy.m
//  XXXCommonKit
//
//  Created by 王旭 on 2022/1/20.
//

#import "XXXProxy.h"

@implementation XXXProxy

+ (instancetype)proxyWithTarget:(id)target {
    XXXProxy * proxy = [XXXProxy alloc];
    proxy.target = target;
    return proxy;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel {
    return [self.target methodSignatureForSelector:sel];
}

- (void)forwardInvocation:(NSInvocation *)invocation {
    [invocation invokeWithTarget:self.target];
}

@end
