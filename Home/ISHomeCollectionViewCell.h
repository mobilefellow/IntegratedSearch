//
//  ISHomeCollectionViewCell.h
//  testCollection
//
//  Created by Xiang Wang on 14-8-11.
//  Copyright (c) 2014年 wx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ISHomeCollectionViewCell : UICollectionViewCell

@property (nonatomic, copy) NSString *text;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIImageView *img;

@end
