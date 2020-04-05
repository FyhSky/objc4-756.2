//
//  DebugObject.h
//  objc-debug
//
//  Created by FengYinghao on 4/9/2019.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DebugObject : NSObject
- (void)startThread;
- (void)printLog;
@end

NS_ASSUME_NONNULL_END
