//
//  ViewController.m
//  XLsn0wMapConvertModel
//
//  Created by XLsn0w on 2018/6/12.
//  Copyright © 2018年 XLsn0w. All rights reserved.
//

#import "ViewController.h"
#import "TitleModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //    // 解析Plist文件
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Data.plist" ofType:nil];
    NSDictionary *statusDict = [NSDictionary dictionaryWithContentsOfFile:filePath];
    
    // 获取字典数组
    NSArray *dictArr = statusDict[@"Data"];
   NSMutableArray* _statuses = [NSMutableArray array];
    
    // 遍历字典数组
    for (NSDictionary *dict in dictArr) {
        
        TitleModel *model = [TitleModel convertModelWithDictionary:dict];
        [_statuses addObject:model];
        NSLog(@"title === %@", model.title);
    }
    
    NSLog(@"%@",_statuses);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
