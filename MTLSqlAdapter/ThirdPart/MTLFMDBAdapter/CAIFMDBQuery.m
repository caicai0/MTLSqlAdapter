//
//  CAIFMDBQuery.m
//  MTLSqlAdapter
//
//  Created by liyufeng on 14/12/18.
//  Copyright (c) 2014年 liyufeng. All rights reserved.
//

#import "CAIFMDBQuery.h"

@implementation CAIFMDBQuery

+ (id)queryWithColumn:(NSString *)column relationshap:(CAIFMDBQueryRelationshapType)relationshap toValue:(id)value{
    CAIFMDBQuery * query = [[CAIFMDBQuery alloc]init];
    query.column = column;
    query.relationType = relationshap;
    query.value = value;
    return query;
}

@end
