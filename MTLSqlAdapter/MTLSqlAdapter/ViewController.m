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
    
    [[CAIDataBase shareDataBase]createTables];
    CAINews * news = [[CAINews alloc]init];
    news.newsId = 1000;
    news.test = 0;
    [[CAIDataBase shareDataBase]replaceModel:news inTable:NSStringFromClass([CAINews class])];

    [[CAIDataBase shareDataBase]findAllInTable:NSStringFromClass([CAINews class]) completion:^(NSError *error, NSArray *result) {
        NSLog(@"%@,%@",error,result);
    }];
    
    [[CAIDataBase shareDataBase]createOrUpdateAll];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
