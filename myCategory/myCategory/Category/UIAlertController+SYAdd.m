//
//  UIAlertController+SYAdd.m
//  myCategory
//
//  Created by song on 2018/2/23.
//  Copyright © 2018年 song. All rights reserved.
//

#import "UIAlertController+SYAdd.h"

@implementation UIAlertController (SYAdd)
/// 包含红色取消
+ (instancetype)alertControllerWithTitle:(NSString *)title
                                 message:(NSString *)message
                          preferredStyle:(UIAlertControllerStyle)preferredStyle
                              sureHandle:(void(^)(UIAlertAction *action))sureHandle
{
    return [UIAlertController alertControllerWithTitle:title
                                               message:message
                                        preferredStyle:preferredStyle
                                             sureTitle:@"确定"
                                       sureActionStyle:UIAlertActionStyleDefault
                                            sureHandle:sureHandle
                                           cancelTitle:@"取消"
                                     cancelActionStyle:UIAlertActionStyleDestructive
                                          cancelHandle:nil];
}
/// 只有确定按钮
+ (instancetype)alertControllerWithTitle:(NSString *)title
                                 message:(NSString *)message
                          preferredStyle:(UIAlertControllerStyle)preferredStyle
                          onlySureHandle:(void(^)(UIAlertAction *action))sureHandle
{
    return [UIAlertController alertControllerWithTitle:title
                                               message:message
                                        preferredStyle:preferredStyle
                                             sureTitle:@"确定"
                                       sureActionStyle:UIAlertActionStyleDefault
                                            sureHandle:sureHandle
                                           cancelTitle:nil
                                     cancelActionStyle:UIAlertActionStyleDestructive
                                          cancelHandle:nil];
}
/**
 自定义确定和取消
 
 @param title title
 @param message message
 @param preferredStyle alertController样式
 @param sureTitle 右侧文字
 @param sureActionStyle 右侧样式
 @param sureHandle 右侧方法回调
 @param cancelTitle 左侧文字
 @param cancelActionStyle 左侧样式
 @param cancelHandle 左侧方法回调
 @return alertController
 */
+ (instancetype)alertControllerWithTitle:(NSString *)title
                                 message:(NSString *)message
                          preferredStyle:(UIAlertControllerStyle)preferredStyle
                               sureTitle:(NSString *)sureTitle
                         sureActionStyle:(UIAlertActionStyle)sureActionStyle
                              sureHandle:(void(^)(UIAlertAction *action))sureHandle
                             cancelTitle:(NSString *)cancelTitle
                       cancelActionStyle:(UIAlertActionStyle)cancelActionStyle
                            cancelHandle:(void(^)(UIAlertAction *action))cancelHandle
{
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:title
                                                                     message:message
                                                              preferredStyle:preferredStyle];
    if (cancelTitle) {
        UIAlertAction *acticonCancel = [UIAlertAction actionWithTitle:cancelTitle
                                                                style:cancelActionStyle
                                                              handler:cancelHandle];
        [alertVC addAction:acticonCancel];
    }
    if (sureTitle) {
        UIAlertAction *acticonSure = [UIAlertAction actionWithTitle:sureTitle
                                                              style:sureActionStyle
                                                            handler:sureHandle];
        [alertVC addAction:acticonSure];
    }
    return alertVC;
}
@end
