//
//  CAIMessage.h
//  CNHC
//
//  Created by liyufeng on 14/11/28.
//  Copyright (c) 2014年 user. All rights reserved.
//

#import "MTLModel.h"
#import "Mantle.h"
@interface CAIMessage : MTLModel <MTLJSONSerializing>

@property (nonatomic, assign)NSInteger flag;
@property (nonatomic, strong)NSString * headImageUrlString;
@property (nonatomic, strong)NSString * memcard;
@property (nonatomic, strong)NSString * qName;
@property (nonatomic, strong)NSString * time;
@property (nonatomic, strong)NSString * title;
@property (nonatomic, strong)NSString * question;
@property (nonatomic, strong)NSString * userName;
@property (nonatomic, strong)NSString * messageId;
@property (nonatomic, assign)NSInteger commentCount;
@property (nonatomic, assign)NSInteger praisedCount;

@end
