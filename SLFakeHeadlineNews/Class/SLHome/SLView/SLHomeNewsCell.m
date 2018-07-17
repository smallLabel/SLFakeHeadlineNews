//
//  SLHomeNewsCell.m
//  SLFakeHeadlineNews
//
//  Created by smallLabel on 2018/7/17.
//  Copyright © 2018年 smallLabel. All rights reserved.
//

#import "SLHomeNewsCell.h"
#import <Masonry/Masonry.h>
#import <SDWebImage/UIImageView+WebCache.h>

@interface SLHomeNewsCell ()
@property (strong, nonatomic) UILabel *titleLabel;
@property (strong, nonatomic) UIImageView *leftImageView;
@property (strong, nonatomic) UIImageView *middleImageView;
@property (strong, nonatomic) UIImageView *rightImageView;
@property (strong, nonatomic) UILabel *infoLabel;
@property (strong, nonatomic) NSArray *imageViews;

@end

@implementation SLHomeNewsCell

- (void)awakeFromNib {
    [super awakeFromNib];
    [self initViews];
    [self layoutViews];
}

- (void)initViews {
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 0, 1)];
    self.titleLabel.backgroundColor = [UIColor redColor];
    [self.contentView addSubview:self.titleLabel];
    
    self.leftImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 0, 1)];
    [self.contentView addSubview:self.leftImageView];
    self.leftImageView.backgroundColor = [UIColor redColor];
    
    self.rightImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 0, 1)];
    [self.contentView addSubview:self.rightImageView];
    self.rightImageView.backgroundColor = [UIColor redColor];
    
    self.middleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 0, 1)];
    [self.contentView addSubview:self.middleImageView];
    self.middleImageView.backgroundColor = [UIColor redColor];
    
    self.infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 0, 1)];
    [self.contentView addSubview:self.infoLabel];
    self.infoLabel.backgroundColor = [UIColor redColor];
    
    _imageViews = @[self.leftImageView, self.middleImageView, self.rightImageView];
}
//约束
- (void)layoutViews {
    UIView *superView = self.contentView;
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(superView.mas_bottom).mas_offset(@10);
        make.left.mas_equalTo(superView.mas_left).mas_offset(@10);
        make.right.mas_offset(superView.mas_right).mas_offset(@-10);
    }];
    
    [self.leftImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(superView.mas_left).mas_offset(@10);
        make.top.mas_equalTo(self.titleLabel.mas_bottom).mas_offset(@10);
    }];
    
    [self.infoLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(superView.mas_bottom).mas_offset(@-10);
        make.top.mas_equalTo(self.leftImageView.mas_bottom).mas_offset(@10);
        make.left.mas_equalTo(superView.mas_left).mas_offset(@10);
    }];
    
    [self.middleImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self.leftImageView);
        make.left.mas_equalTo(self.leftImageView.mas_right).equalTo(@10);
        make.height.mas_equalTo(self.leftImageView.mas_height);
    }];
    
    [self.rightImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self.leftImageView);
        make.left.mas_equalTo(self.middleImageView.mas_right).mas_offset(@10);
        make.right.mas_equalTo(superView.mas_right).mas_offset(@-10);
        make.height.mas_equalTo(self.middleImageView.mas_height);
        make.width.mas_equalTo(@[self.leftImageView, self.middleImageView]);
    }];
}

- (void)setModel:(SLHomeNewsSummaryModel *)model {
    _model = model;
    _titleLabel.text = model.infoModel.title;
    if (model.infoModel.image_list.count == 3) {
        _leftImageView.hidden = NO;
        _rightImageView.hidden = NO;
        _middleImageView.hidden = NO;
        NSArray *imageModels  = model.infoModel.image_list;
        [imageModels enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            SLHomeNewsImageModel *imageModel = (SLHomeNewsImageModel *)obj;
            UIImageView *imageView = self.imageViews[idx];
            [imageView sd_setImageWithURL:[NSURL URLWithString:imageModel.url]];
        }];
    }else {
        _leftImageView.hidden = YES;
        _rightImageView.hidden = YES;
        _middleImageView.hidden = YES;
    }
    _infoLabel.text = [NSString stringWithFormat:@"%@   %d阅读  0分钟前",model.infoModel.media_name,model.infoModel.read_count];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
