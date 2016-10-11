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
@end
