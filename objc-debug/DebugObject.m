//
//  DebugObject.m
//  objc-debug
//
//  Created by FengYinghao on 4/9/2019.
//

#import "DebugObject.h"

@interface DebugObject()

@property (nonatomic,strong) NSThread *thread;
@property (nonatomic,weak) NSString *weakString;

@end

@implementation DebugObject
- (void)startThread {
    __weak typeof(self)weakSelf = self;
    self.thread = [[NSThread alloc] initWithBlock:^{
        NSString *str = [NSString stringWithFormat:@"Test DebugObject"];
        weakSelf.weakString = str;
        NSLog(@"%s,weakString = %@",__FUNCTION__,weakSelf.weakString);
    }];
    [self.thread start];
}

- (void)printLog {
    NSLog(@"%s,weakString = %@",__FUNCTION__,self.weakString);
}

@end
