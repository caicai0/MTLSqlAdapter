//
//  CAIYiyantang.h
//  netWork
//
//  Created by mac on 14/11/24.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"
@interface CAIYiyantang : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong) NSString * etime;
@property (nonatomic, strong) NSString * yiId;
@property (nonatomic, strong) NSString * imageUrlString;
@property (nonatomic, assign) NSInteger state;
@property (nonatomic, strong) NSString * stime;
@property (nonatomic, strong) NSString * title;

@end
