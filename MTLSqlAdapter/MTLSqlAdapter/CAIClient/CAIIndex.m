//
//  CAIIndex.m
//  MTLSqlAdapter
//
//  Created by liyufeng on 16/6/21.
//  Copyright © 2016年 liyufeng. All rights reserved.
//

#import "CAIIndex.h"

@implementation CAIIndex

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.fieldIndex = [NSMutableArray array];
    }
    return self;
}

@end
