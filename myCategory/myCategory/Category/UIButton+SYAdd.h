//
//  UIButton+SYAdd.h
//  myCategory
//
//  Created by song on 2018/2/23.
//  Copyright © 2018年 song. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSUInteger, SYImageAlignment) {
    SYImageAlignmentTop = 0, // 图片在上
    SYImageAlignmentLeft, //图片在左，默认,space增加间距
    SYImageAlignmentRight, // 图片在右
    SYImageAlignmentBottom, // 图片在下
};
@interface UIButton (SYAdd)

/**
 修改button的image位置

 @param imageAlignment 图片位置
 @param space 文字和图片间距
 */
- (void)changeButtonImageAlignment:(SYImageAlignment)imageAlignment withSpace:(CGFloat)space;
@end
