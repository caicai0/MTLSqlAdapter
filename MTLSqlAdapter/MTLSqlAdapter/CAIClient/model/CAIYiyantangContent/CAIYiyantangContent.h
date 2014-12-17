//
//  CAIYiyantangContent.h
//  netWork
//
//  Created by mac on 14/11/24.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"

@interface CAIYiyantangContent : MTLModel <MTLJSONSerializing>

@property (nonatomic, assign)NSInteger flag;
@property (nonatomic, strong)NSString * headerImageUrlString;
@property (nonatomic, strong)NSString * contentId;
@property (nonatomic, strong)NSString * memcard;
@property (nonatomic, assign)NSInteger commentCount;
@property (nonatomic, strong)NSString * qName;
@property (nonatomic, strong)NSString * question;
@property (nonatomic, assign)NSInteger praiseCount;
@property (nonatomic, strong)NSString * time;
@property (nonatomic, strong)NSString * title;
@property (nonatomic, strong)NSString * userName;

@end
