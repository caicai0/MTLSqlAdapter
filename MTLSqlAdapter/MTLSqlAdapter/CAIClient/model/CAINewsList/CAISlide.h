//
//  CAISlide.h
//  netWork
//
//  Created by mac on 14/11/20.
//  Copyright (c) 2014年 mac. All rights reserved.
//

//幻灯片备用类  目前 是CAINews 

#import "MTLModel.h"
#import "Mantle.h"
@interface CAISlide : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong) NSString * author;
@property (nonatomic, strong) NSString * slideId;
@property (nonatomic, strong) NSString * imageUrlString;
@property (nonatomic, assign) NSInteger openType;
@property (nonatomic, assign) NSInteger original;
@property (nonatomic, strong) NSString * publishedTime;
@property (nonatomic, assign) NSInteger readTimes;
@property (nonatomic, strong) NSString *shortTitle;
@property (nonatomic, strong) NSString *source;
@property (nonatomic, strong) NSString *subTitle;
@property (nonatomic, strong) NSString *summary;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, assign) NSInteger newsType;

@end
