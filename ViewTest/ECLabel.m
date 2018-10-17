//
// Created by 吕晴阳 on 2018/10/17.
// Copyright (c) 2018 Lv Qingyang. All rights reserved.
//

#import "ECLabel.h"


@implementation ECLabel {

}

- (void)drawTextInRect:(CGRect)rect {
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, self.padding)];
}

- (void)setPadding:(UIEdgeInsets)padding {
    _padding = padding;
    [self setNeedsDisplay];
}
@end