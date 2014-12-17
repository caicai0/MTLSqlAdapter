//
//  CAIMessageAuthenticationResult.h
//  CNHC
//
//  Created by mac on 14/11/27.
//  Copyright (c) 2014年 user. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"
@interface CAIMessageAuthenticationResult : MTLModel <MTLJSONSerializing>

@property (nonatomic, assign)NSInteger code;
@property (nonatomic, strong)NSArray * datas;//服务端保留  不知道干什么用的
@property (nonatomic, assign)NSInteger defaltCount;
@property (nonatomic, strong)NSString * errorString;
@property (nonatomic, assign)NSInteger maxCount;
@property (nonatomic, assign)NSInteger total;
@property (nonatomic, strong)NSString * yanzhengma;

@end
