//
//  ISHomeFunctionItem.h
//  IntegratedSearch
//
//  Created by Xiang Wang on 14-8-12.
//  Copyright (c) 2014年 WangXiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ISHomeFunctionItem : NSObject

@property(nonatomic, copy) NSString *functionName;
@property(nonatomic, copy) NSString *functionImageName;

- (id)initWithItemName:(NSString*)iName ImageName:(NSString*)iImageName;

@end
