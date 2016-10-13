//
//  MJRefreshShadow.m
//  MJRefreshShadow
//
//  Created by apple on 16/10/11.
//  Copyright © 2016年 Liancheng. All rights reserved.
//

#import "MJRefreshShadow.h"

@implementation MJRefreshShadow
- (UIImage *)getImage{
    NSBundle * bundle = [NSBundle bundleWithPath:[[NSBundle mainBundle]pathForResource:@"MJRefreshShadow" ofType:@"bundle"]];
    NSString * imagePathStr = [bundle pathForResource:@"1" ofType:@"png"];
    UIImage * image = [UIImage imageWithContentsOfFile:imagePathStr];
    return image;
}

- (void)test{
    NSLog(@"这是静态库测试");
}
/*
 （1）注意：
 
 　　无论是 .a 静态库还是 .framework 静态库，最终需要的都是：二进制文件 + .h + 其它资源文件
 
 
 
 （2）.a 和 .framework 的使用区别
 
 　　.a 本身是一个二进制文件，需要配上 .h 和 其它资源文件 才能使用
 
 　　.framework 本身已经包含了 .h 和 其它资源文件，可以直接使用
 
 4）多文件处理
 
 　　如果静态库需要暴露出来的 .h 比较多，可以考虑创建一个主头文件（一般 主头文件 和 静态库 同名）
 
 　　在主头文件中包含所有其他需要暴露出来的 .h 文件
 
 　　使用静态库时，只需要#import 主头文件
 
 　　实际上苹果官方就是这么做的，例如：#import <UIKit/UIKit.h>
 
 
 
 （5）.framework为什么既是静态库又是动态库
 
 　　系统的 .framework 是动态库
 
 　　我们自己建立的 .framework 是静态库
 
 
 
 （6）静态库中包含了Category（分类）
 
 如果静态库中包含了Category，有时候在使用静态库的工程中会报“方法找不到”的错误（unrecognized selector sent to instance）
 
 解决方案：在使用静态库的工程中配置Other Linker Flags为-ObjC
 */

@end
