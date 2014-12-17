//
//  Global.m
//  netWork
//
//  Created by mac on 14/11/17.
//  Copyright (c) 2014年 mac. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "HTTPHeader.h"
#import "OpenUDID.h"
#import "MD5Tool.h"

#define SESSION @"cn-healthcare_"   // session值

@implementation HTTPHeader

static HTTPHeader * global = nil;

+ (HTTPHeader *)header{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        global = [[HTTPHeader alloc]init];
    });
    return global;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _uniqueIdentifierId = [OpenUDID value];
        _deviceModel = [[UIDevice currentDevice] model];
        _systemInfo = [[NSBundle mainBundle]infoDictionary];
        _systemVersion =[UIDevice currentDevice].systemVersion;
        _bundelVersion=[[[NSBundle mainBundle]infoDictionary]objectForKey:@"CFBundleVersion"];
        _channelCode = @"zgjkj_1001";
        CGRect bounds = [UIScreen mainScreen].bounds;
        _display = [NSString stringWithFormat:@"%fx%f",bounds.size.width,bounds.size.height];
        
    }
    return self;
}

+ (NSString *)getOneDate{
    
    NSString *timeString = [[NSUserDefaults standardUserDefaults]objectForKey:@"sid"];
    if (!timeString) {
        
        NSDate* dat = [NSDate dateWithTimeIntervalSinceNow:0];
        NSTimeInterval a=[dat timeIntervalSince1970]*1000;
        timeString = [NSString stringWithFormat:@"%f", a];//转为字符型
        
        // 保存时间戳
        
        [[NSUserDefaults standardUserDefaults]setObject:timeString forKey:@"sid"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        return timeString;
    }
    else{
        return timeString;
    }
}

+ (NSString *)getSessionOfDate:(NSString *)date{
    NSString *str = [SESSION stringByAppendingString:date];
    NSString *string = [MD5Tool md5:str];
    return string;
}

+ (NSString *)getMemcard{
    return @"";//TODO:用于测试
}

+ (NSMutableURLRequest *)addSameHeaderParametersToRquest:(NSMutableURLRequest *)urlRequest{
    NSString *date = [HTTPHeader getOneDate];
    [urlRequest addValue:date forHTTPHeaderField:@"sid"];
    urlRequest.timeoutInterval = 100;
    [urlRequest addValue:[HTTPHeader getSessionOfDate:date] forHTTPHeaderField:@"ssid"];
    [urlRequest addValue:[HTTPHeader header].uniqueIdentifierId forHTTPHeaderField:@"id"];
    [urlRequest addValue:[HTTPHeader header].deviceModel forHTTPHeaderField:@"model"];
    [urlRequest addValue:[HTTPHeader header].bundelVersion forHTTPHeaderField:@"appversion"];
    [urlRequest addValue:[HTTPHeader header].systemVersion forHTTPHeaderField:@"version"];
    [urlRequest addValue:[HTTPHeader header].channelCode forHTTPHeaderField:@"channel"];
    [urlRequest addValue:[HTTPHeader header].display forHTTPHeaderField:@"display"];
    [urlRequest addValue:[HTTPHeader getMemcard] forHTTPHeaderField:@"memcard"];
    NSLog(@"request:%@\n------------------------------------\n",urlRequest);
    return urlRequest;
}

@end
