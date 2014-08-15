//
//  ISHomeString.h
//  IntegratedSearch
//
//  Created by Xiang Wang on 14-8-12.
//  Copyright (c) 2014年 WangXiang. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 * Provide pre-define string for Home View Controller
 */
@interface ISHomeString : NSObject

@property (nonatomic, readonly) NSString *trainName;
@property (nonatomic, readonly) NSString *trainImageName;
@property (nonatomic, readonly) NSString *expressName;
@property (nonatomic, readonly) NSString *expressImageName;


+ (ISHomeString*) sharedInstance;

@end
