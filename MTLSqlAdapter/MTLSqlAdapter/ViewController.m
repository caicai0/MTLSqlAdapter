//
//  ViewController.m
//  MTLSqlAdapter
//
//  Created by liyufeng on 14/12/17.
//  Copyright (c) 2014年 liyufeng. All rights reserved.
//

#import "ViewController.h"
#import "CAIClient.h"
#import "CAIDataBase.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[CAIClient shareClient]newsListTopWithPage:1 publishTime:@"0" finish:^(CAINewsList *result, NSError *error) {
        [[CAIDataBase shareDataBase]createTables];
        for (CAINews * news in result.datas) {
            [[CAIDataBase shareDataBase]replaceModel:news inTable:nil completion:nil];
        }
    }];
    
    [[CAIDataBase shareDataBase]createOrUpdateAll];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
