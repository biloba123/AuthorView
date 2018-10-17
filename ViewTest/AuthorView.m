//
// Created by 吕晴阳 on 2018/10/16.
// Copyright (c) 2018 Lv Qingyang. All rights reserved.
//

#import "AuthorView.h"
#import "ECLabel.h"

@interface AuthorView ()
@property(weak, nonatomic) ECLabel *label;
@property(weak, nonatomic) UIImageView *imageView;

@end

@implementation AuthorView {

}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self initSubviews];
    }

    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self initSubviews];
    }

    return self;
}

- (void)initSubviews {
    ECLabel *label = [ECLabel new];
    label.backgroundColor = [UIColor colorWithWhite:0 alpha:0.54];
    label.textColor = [UIColor whiteColor];
    [self addSubview:label];
    _label = label;

    UIImageView *imageView = [UIImageView new];
    [self addSubview:imageView];
    _imageView = imageView;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    CGFloat width = self.bounds.size.width;
    CGFloat height = self.bounds.size.height;

    self.imageView.frame = CGRectMake(width - height, 0, height, height);
    self.imageView.layer.cornerRadius = height / 2;
    self.imageView.layer.masksToBounds = YES;

    CGRect labelFrame;
    labelFrame.size.height = height * 0.6;
    labelFrame.size.width = width - height / 2;
    labelFrame.origin.x = 0;
    labelFrame.origin.y = (height - labelFrame.size.height) / 2;
    self.label.frame = labelFrame;
    CGFloat cornerRadius = labelFrame.size.height / 2;
    self.label.layer.cornerRadius = cornerRadius;
    self.label.layer.masksToBounds = YES;
    self.label.padding = UIEdgeInsetsMake(0, cornerRadius, 0, height / 2);
    self.label.font = [UIFont systemFontOfSize:height * 0.24];
}

- (void)setName:(NSString *)name {
    _name = name;
    self.label.text = self.name;
}

- (void)setProfile:(UIImage *)profile {
    _profile = profile;
    self.imageView.image = self.profile;
}


@end
