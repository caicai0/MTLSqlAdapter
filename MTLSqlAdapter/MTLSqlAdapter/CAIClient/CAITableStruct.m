//
//  CAITableStruct.m
//  MTLSqlAdapter
//
//  Created by liyufeng on 16/6/21.
//  Copyright © 2016年 liyufeng. All rights reserved.
//

#import "CAITableStruct.h"

@implementation CAITableStruct

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.fields = [NSMutableArray array];
        self.indexs = [NSMutableArray array];
    }
    return self;
}

- (void)addFieldsWithSql:(NSString *)sql{
    NSLog(@"sql:%@",sql);
    NSMutableArray * fields = [NSMutableArray array];
    NSString * pattern = @"([\\w\\W]*)";
    NSError *error = NULL;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:pattern
                                                                           options:NSRegularExpressionCaseInsensitive
                                                                             error:&error];
    NSArray * result = [regex matchesInString:sql options:NSMatchingReportCompletion range:NSMakeRange(0, sql.length)];

    NSLog(@"%@",result);

    NSString *fieldString;
    
}
- (void)addIndexsWithSql:(NSString *)sql{

}

@end
