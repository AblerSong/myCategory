//
//  UIButton+SYAdd.m
//  myCategory
//
//  Created by song on 2018/2/23.
//  Copyright © 2018年 song. All rights reserved.
//

#import "UIButton+SYAdd.h"

@implementation UIButton (SYAdd)
- (void)changeButtonImageAlignment:(SYImageAlignment)imageAlignment withSpace:(CGFloat)space
{
    switch (imageAlignment) {
        case SYImageAlignmentTop:
            [self changeButtonImageToTop:space];
            break;
        case SYImageAlignmentLeft:
            [self changeButtonImageToLeft:space];
            break;
        case SYImageAlignmentRight:
            [self changeButtonImageToRight:space];
            break;
        case SYImageAlignmentBottom:
            [self changeButtonImageToBottom:space];
            break;
        default:
            break;
    }
}

/**
 上图下文
 
 @param space 文字图片距离
 */
- (void)changeButtonImageToTop:(CGFloat)space
{
    CGSize imageSize = self.imageView.frame.size;
    CGSize titleSize = self.titleLabel.frame.size;
    CGSize textSize = [self.titleLabel.text sizeWithAttributes:@{@"NSFontAttributeName" : self.titleLabel.font }];
    CGSize frameSize = CGSizeMake(ceilf(textSize.width), ceilf(textSize.height));
    if (titleSize.width + 0.5 < frameSize.width) {
        titleSize.width = frameSize.width;
    }
    CGFloat totalHeight = (imageSize.height + titleSize.height + space);
    self.imageEdgeInsets = UIEdgeInsetsMake(- (totalHeight - imageSize.height), 0.0, 0.0, - titleSize.width);
    self.titleEdgeInsets = UIEdgeInsetsMake(0, - imageSize.width, - (totalHeight - titleSize.height), 0);
}

/**
 左图右文
 
 @param space 间距
 */
- (void)changeButtonImageToLeft:(CGFloat)space{
    self.titleEdgeInsets = UIEdgeInsetsMake(0, space * 0.5, 0, space * (-0.5));
    self.imageEdgeInsets = UIEdgeInsetsMake(0, space * (-0.5), 0, space * 0.5);
}

/**
 左文右图
 
 @param space 间距
 */
- (void)changeButtonImageToRight:(CGFloat)space{
    self.titleEdgeInsets = UIEdgeInsetsMake(0, -self.imageView.frame.size.width - space * 0.5, 0, self.imageView.frame.size.width + space * 0.5);
    self.imageEdgeInsets = UIEdgeInsetsMake(0, self.titleLabel.frame.size.width + space * 0.5, 0, -self.titleLabel.frame.size.width - space * 0.5);
}

/**
 上图下文
 
 @param space 文字图片距离
 */
- (void)changeButtonImageToBottom:(CGFloat)space
{
    CGSize imageSize = self.imageView.frame.size;
    CGSize titleSize = self.titleLabel.frame.size;
    CGSize textSize = [self.titleLabel.text sizeWithAttributes:@{@"NSFontAttributeName" : self.titleLabel.font }];
    CGSize frameSize = CGSizeMake(ceilf(textSize.width), ceilf(textSize.height));
    if (titleSize.width + 0.5 < frameSize.width) {
        titleSize.width = frameSize.width;
    }
    CGFloat totalHeight = (imageSize.height + titleSize.height + space);
    self.titleEdgeInsets = UIEdgeInsetsMake(- (totalHeight - imageSize.height), imageSize.width * -0.5, 0.0, imageSize.width * 0.5);
    self.imageEdgeInsets = UIEdgeInsetsMake(0, titleSize.width * 0.5, - (totalHeight - titleSize.height), titleSize.width * -0.5);
}
@end
