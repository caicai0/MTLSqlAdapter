//
//  CAIFMDBQuery.h
//  MTLSqlAdapter
//
//  Created by liyufeng on 14/12/18.
//  Copyright (c) 2014年 liyufeng. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, CAIFMDBQueryRelationshapType) {
    CAIFMDBQueryRelationshapTypeEqual,
    CAIFMDBQueryRelationshapTypeGreaterThan,
    CAIFMDBQueryRelationshapTypeGreaterThanOrEqualTo,
    CAIFMDBQueryRelationshapTypeLessThan,
    CAIFMDBQueryRelationshapTypeLessThanOrEqualTo
};

@interface CAIFMDBQuery : NSObject

@property (nonatomic, strong) NSString * column;
@property (nonatomic, strong) id value;//接收 fmdb  ?  值
@property (nonatomic, assign) CAIFMDBQueryRelationshapType relationType;

+ (id)queryWithColumn:(NSString *)column relationshap:(CAIFMDBQueryRelationshapType)relationshap toValue:(id)value;

@end
