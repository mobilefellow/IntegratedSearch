//
//  ISHomeFunctionItem.m
//  IntegratedSearch
//
//  Created by Xiang Wang on 14-8-12.
//  Copyright (c) 2014年 WangXiang. All rights reserved.
//

#import "ISHomeFunctionItem.h"

@implementation ISHomeFunctionItem
@synthesize functionImageName;
@synthesize functionName;

- (id)initWithItemName:(NSString*)iName ImageName:(NSString*)iImageName
{
    self = [super init];
    if (self) {
        functionName = iName;
        functionImageName = iImageName;
    }
    return self;
}

@end
