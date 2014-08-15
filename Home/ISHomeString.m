//
//  ISHomeString.m
//  IntegratedSearch
//
//  Created by Xiang Wang on 14-8-12.
//  Copyright (c) 2014年 WangXiang. All rights reserved.
//

#import "ISHomeString.h"

@implementation ISHomeString

@synthesize trainImageName;
@synthesize trainName;
@synthesize expressImageName;
@synthesize expressName;

+ (ISHomeString *)sharedInstance
{
    static ISHomeString *staticInstance = nil;
    if (!staticInstance) {
        staticInstance = [[super allocWithZone:nil]init];
    }
    return staticInstance;
}

+ (id)allocWithZone:(struct _NSZone *)zone
{
    return [ISHomeString sharedInstance];
}

- (id) init
{
    self = [super init];
    if (self) {
        trainName = @"train";
        trainImageName = @"train.png";
        
        expressName = @"express";
        expressImageName = @"express.png";
    }
    return self;
}

@end
