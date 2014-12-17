//
//  CAIAd.h
//  netWork
//
//  Created by mac on 14/11/20.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"
@interface CAIAd : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong)NSString * adId;
@property (nonatomic, strong)NSString * content;
@property (nonatomic, strong)NSString * createTime;
@property (nonatomic, strong)NSString * eTime;
@property (nonatomic, strong)NSString * imageUrlString;
@property (nonatomic, assign)NSInteger position;
@property (nonatomic, strong)NSString * shareImageUrlString;
@property (nonatomic, assign)NSInteger state;
@property (nonatomic, strong)NSString * sTime;
@property (nonatomic, strong)NSString * thumbImageUrlString;
@property (nonatomic, strong)NSString * title;
@property (nonatomic, assign)NSInteger type;
@property (nonatomic, strong)NSString * urlString;
@property (nonatomic, assign)NSInteger weight;

//本地用于记录
@property (nonatomic, assign)BOOL isRead;

@end
