//
//  CAIMyMessageResult.h
//  CNHC
//
//  Created by liyufeng on 14/11/28.
//  Copyright (c) 2014年 user. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"
#import "CAIMessage.h"

@interface CAIMyMessageResult : MTLModel <MTLJSONSerializing>

@property (nonatomic, assign)NSInteger code;
@property (nonatomic, strong)NSArray * datas;

@end
