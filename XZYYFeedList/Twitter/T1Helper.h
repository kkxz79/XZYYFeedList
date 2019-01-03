//
//  T1Helper.h
//  XZYYFeedList
//
//  Created by kkxz on 2019/1/2.
//  Copyright © 2019 kkxz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <YYKit/YYKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface T1Helper : NSObject

/// Image resource bundle
+ (NSBundle *)bundle;

/// Image cache
+ (YYMemoryCache *)imageCache;

/// Get image from bundle with cache.
+ (UIImage *)imageNamed:(NSString *)name;

/// Convert date to friendly description.
+ (NSString *)stringWithTimelineDate:(NSDate *)date;

/// Convert number to friendly description.
+ (NSString *)shortedNumberDesc:(NSUInteger)number;

@end

NS_ASSUME_NONNULL_END
