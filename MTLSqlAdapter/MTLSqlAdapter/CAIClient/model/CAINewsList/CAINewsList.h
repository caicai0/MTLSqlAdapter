//
//  CAINewsList.h
//  netWork
//
//  Created by mac on 14/11/20.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"
#import "CAINews.h"
#import "CAIAuthor.h"

//新闻列表  
@interface CAINewsList : MTLModel <MTLJSONSerializing>

@property (nonatomic, assign)NSInteger cache;//缓存
@property (nonatomic, assign)NSInteger code;
@property (nonatomic, strong)NSString *errorMsg;
@property (nonatomic, strong)NSString *getTime;
@property (nonatomic, strong)NSArray *datas;//新闻数据
@property (nonatomic, strong)NSArray *slides;
@property (nonatomic, strong)CAIAuthor * author;//专栏使用

@end
