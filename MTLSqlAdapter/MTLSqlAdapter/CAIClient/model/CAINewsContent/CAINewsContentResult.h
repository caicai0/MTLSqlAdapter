//
//  CAINewsContentResult.h
//  netWork
//
//  Created by mac on 14/11/20.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"
#import "CAINewsContent.h"
@interface CAINewsContentResult : MTLModel <MTLJSONSerializing>

@property (nonatomic, assign)NSInteger cache;
@property (nonatomic, assign)NSInteger code;
@property (nonatomic, strong)CAINewsContent *newsContent;

@end
