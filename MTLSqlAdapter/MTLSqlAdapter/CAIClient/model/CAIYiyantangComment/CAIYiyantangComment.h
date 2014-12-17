//
//  CAIYiyantangComment.h
//  netWork
//
//  Created by mac on 14/11/24.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"
@interface CAIYiyantangComment : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong)NSString * headImageUrlString;
@property (nonatomic, strong)NSString * commentId;
@property (nonatomic, strong)NSString * memcard;
@property (nonatomic, strong)NSString * time;
@property (nonatomic, strong)NSString * title;
@property (nonatomic, strong)NSString * userName;

@end
