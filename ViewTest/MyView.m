//
// Created by 吕晴阳 on 2018/10/16.
// Copyright (c) 2018 Lv Qingyang. All rights reserved.
//

#import "MyView.h"


@implementation MyView {

}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self=[super initWithCoder:aDecoder];
    NSLog(@"[%@ %s]", self.class, sel_getName(_cmd));
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    NSLog(@"[%@ %s]", self.class, sel_getName(_cmd));
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    NSLog(@"[%@ %s]", self.class, sel_getName(_cmd));
    return self;
}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    NSLog(@"[%@ %s]", self.class, sel_getName(_cmd));
}


@end