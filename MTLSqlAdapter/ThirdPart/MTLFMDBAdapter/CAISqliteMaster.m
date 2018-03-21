//
//  CAISqliteMaster.m
//  MTLSqlAdapter
//
//  Created by liyufeng on 16/6/20.
//  Copyright © 2016年 liyufeng. All rights reserved.
//

#import "CAISqliteMaster.h"

@implementation CAISqliteMaster

+ (NSDictionary *)FMDBColumnsByPropertyKey{
    return @{@"tableName":@"tbl_name"};
}

+ (NSArray *)FMDBPrimaryKeys{
    return nil;
}

@end
