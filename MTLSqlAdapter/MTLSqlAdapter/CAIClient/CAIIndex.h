//
//  CAIIndex.h
//  MTLSqlAdapter
//
//  Created by liyufeng on 16/6/21.
//  Copyright © 2016年 liyufeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CAIFieldIndex.h"

@interface CAIIndex : NSObject

@property (nonatomic, strong)NSString * indexName;//索引名称
@property (nonatomic, assign)BOOL unique;//唯一
@property (nonatomic, strong)NSString * tableName;//表名称
@property (nonatomic, strong)NSMutableArray<CAIFieldIndex *> * fieldIndex;//字段名称

@end
