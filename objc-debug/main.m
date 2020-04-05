//
//  main.m
//  objc-debug
//
//  Created by FengYinghao on 27/8/2019.
//

#import <Foundation/Foundation.h>
#import "DebugObject.h"


int main(int argc, const char * argv[]) {
    NSString *sss;
    NSObject *aa;
    @autoreleasepool {
        // insert code here...
        NSObject *object = [[NSObject alloc]init];
        aa = object; //调用（aa = objc_retain(object)）  objc_storeStrong ->  objc_retain
        
        
        //[NSString stringWithFormat:@"%@",@"fsfasddddddddddddddddddddd"] 调用objc_autorelease存放在AutoreleasePool中，记做返回值为str
        
        //_objc_autorelease ->  objc_object::autorelease - > objc_object::rootAutorelease -> objc_object::rootAutorelease2 -> AutoreleasePoolPage::autorelease
        //然后再调用（sss = objc_retain(str)） objc_storeStrong - > objc_retain
        sss =  [NSString stringWithFormat:@"%@",@"fsfasddddddddddddddddddddd"];
        
    }
    //出了作用域后objc_release（object）释放
    //此时str咱不会释放，释放时间依赖于上述AutoreleasePool释放时机
    
    /*
    DebugObject *obj = [DebugObject new];
    [obj startThread];//[NSThread start]方法里面创建自动释放池子、并且关联
    //pthread_key_init_np(AutoreleasePoolPage::key,AutoreleasePoolPage::tls_dealloc)
    //当thread线程退出的时候，执行tls_dealloc，释放里面的存储的对象
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0 * NSEC_PER_SEC)), dispatch_get_global_queue(0, 0), ^{
        [obj printLog];
    });
    while (1) {
        
    }*/
    
//此时str可能会释放
    
    return 0;
}
//出了作用域后objc_release（aa）释放
//出了作用域后objc_release（sss）释放
