//
//  XXXProxy.h
//  XXXCommonKit
//
//  Created by 王旭 on 2022/1/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XXXProxy : NSProxy

@property(nonatomic, weak)id target;

+ (instancetype)proxyWithTarget:(id)target;

@end

NS_ASSUME_NONNULL_END
