//
//  XZControl.h
//  XZYYFeedList
//
//  Created by kkxz on 2019/1/3.
//  Copyright © 2019 kkxz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <YYKit/YYKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface XZControl : UIView
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, copy) void (^touchBlock)(XZControl *view, YYGestureRecognizerState state, NSSet *touches, UIEvent *event);
@property (nonatomic, copy) void (^longPressBlock)(XZControl *view, CGPoint point);
@end

NS_ASSUME_NONNULL_END
