//
//  CAICollection.h
//  netWork
//
//  Created by mac on 14/11/21.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"
@interface CAICollection : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong)NSString * collectTime;
@property (nonatomic, strong)NSString * imageUrlString;
@property (nonatomic, strong)NSString * memCard;
@property (nonatomic, strong)NSString * newsId;
@property (nonatomic, strong)NSString * importSource; // n 原创  t 推广
@property (nonatomic, assign)NSInteger readTimes;
@property (nonatomic, assign)NSInteger source;
@property (nonatomic, strong)NSString * summary;
@property (nonatomic, strong)NSString * title;
@property (nonatomic, assign)NSInteger newsType;

@end
