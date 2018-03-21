//
//  CAINews.h
//  netWork
//
//  Created by mac on 14/11/20.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"
#import "MTLFMDBAdapter.h"
@interface CAINews : MTLModel <MTLJSONSerializing,MTLFMDBSerializing>

@property (nonatomic, strong) NSString * author;
@property (nonatomic, assign) NSInteger newsId;
@property (nonatomic, strong) NSString * imageUrlString;
@property (nonatomic, strong) NSString * publishedTime;
@property (nonatomic, strong) NSString * readTimes;
@property (nonatomic, strong) NSString * shortTitle;
@property (nonatomic, strong) NSString * source;
@property (nonatomic, strong) NSString * subTitle;
@property (nonatomic, strong) NSString * summary;
@property (nonatomic, strong) NSString * title;
@property (nonatomic, assign) NSInteger newsType;//用于判断是文章还是专题   1 文章 2 专题
@property (nonatomic, strong) NSString * importSource;//用于判断文章类型  n原创  t推广
@property (nonatomic, assign) NSInteger openType;//用于区分 slide

//数据库用于 查表
@property (nonatomic, assign) NSInteger columid;
@property (nonatomic, assign) NSInteger tasktype;
@property (nonatomic, assign) BOOL test;//测试BOOL值

@end
