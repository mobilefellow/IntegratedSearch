//
//  ISHomeCollectionViewCell.m
//  testCollection
//
//  Created by Xiang Wang on 14-8-11.
//  Copyright (c) 2014年 wx. All rights reserved.
//

#import "ISHomeCollectionViewCell.h"

@implementation ISHomeCollectionViewCell

@synthesize img;
@synthesize titleLabel;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        CGRect rect = CGRectMake(5, 5, frame.size.width, 40);
        img = [[UIImageView alloc]initWithFrame:rect];
        [self addSubview:img];
        
        rect = CGRectMake(5, 45, frame.size.width, 40);
        titleLabel = [[UILabel alloc]initWithFrame:rect];
        [self addSubview:titleLabel];
    }
    return self;
}

@end
