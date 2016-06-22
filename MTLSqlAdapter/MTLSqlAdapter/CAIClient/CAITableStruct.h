//
//  CAITableStruct.h
//  MTLSqlAdapter
//
//  Created by liyufeng on 16/6/21.
//  Copyright © 2016年 liyufeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CAIFileld.h"
#import "CAIIndex.h"

@interface CAITableStruct : NSObject

@property (nonatomic, strong)NSString * tableName;
@property (nonatomic, strong)NSMutableArray<CAIFileld *> * fields;//字段
@property (nonatomic, strong)NSMutableArray<CAIIndex *> * indexs;//索引

- (void)addFieldsWithSql:(NSString *)sql;
- (void)addIndexsWithSql:(NSString *)sql;

@end
