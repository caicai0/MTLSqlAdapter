//
//  Global.h
//  netWork
//
//  Created by mac on 14/11/17.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HTTPHeader : NSObject

#pragma mark - 共有

+ (HTTPHeader *)header;

#pragma mark - HTTP Header
//手机唯一标识
@property (nonatomic, strong ,readonly)NSString *uniqueIdentifierId;
//移动设备机型
@property (nonatomic, strong ,readonly)NSString *deviceModel;
//system Info
@property (nonatomic, strong ,readonly)NSDictionary *systemInfo;
//版本号
@property (nonatomic, strong ,readonly)NSString *bundelVersion;
@property (nonatomic, strong ,readonly)NSString *systemVersion;
//渠道号
@property (nonatomic, strong ,readonly)NSString *channelCode;
//设备分辨率
@property (nonatomic, strong ,readonly)NSString *display;

+ (NSString *)getOneDate;
+ (NSString *)getSessionOfDate:(NSString *)date;
+ (NSString *)getMemcard;
+ (NSMutableURLRequest *)addSameHeaderParametersToRquest:(NSMutableURLRequest *)urlRequest;

@end
