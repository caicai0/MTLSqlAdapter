//
//  CAISpecail.h
//  CNHC
//
//  Created by liyufeng on 14/12/10.
//  Copyright (c) 2014年 user. All rights reserved.
//

#import "MTLModel.h"

#import "Mantle.h"
@interface CAISpecail : MTLModel<MTLJSONSerializing>

@property (nonatomic, strong)NSString * title;
@property (nonatomic, strong)NSString * specialId;
@property (nonatomic, strong)NSString * summary;
@property (nonatomic, strong)NSString * urlString;
@property (nonatomic, strong)NSString * imageUrlString;
@property (nonatomic, strong)NSArray * list;

@end
