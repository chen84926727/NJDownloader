//
//  ViewController.m
//  NSDownloadTask
//
//  Created by apple on 16/7/14.
//  Copyright © 2016年 alan. All rights reserved.
//

#import "ViewController.h"
#import "LMJDownloadOffLineTask.h"
@interface ViewController ()

/** <#digest#> */
@property (nonatomic, strong) LMJDownloadOffLineTask *task1;

/** <#digest#> */
@property (nonatomic, strong) LMJDownloadOffLineTask *task2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.task1 = [LMJDownloadOffLineTask downloadTaskWithURL:@"http://a.hiphotos.baidu.com/image/pic/item/6a63f6246b600c330ff856251e4c510fd8f9a15e.jpg" progress:^(CGFloat progress) {
        
        NSLog(@"task1已经下载-%f", progress);
        
    } complete:^(NSError *error, NSString *filePath) {
        
        NSLog(@"task1下载完后的文件储存地址%@", filePath);
        
    }];
    
    
    self.task2 = [LMJDownloadOffLineTask downloadTaskWithURL:@"http://f.hiphotos.baidu.com/image/pic/item/b219ebc4b74543a9bf5072211a178a82b8011497.jpg" progress:^(CGFloat progress) {
        
        NSLog(@"task2已经下载-%f", progress);
        
    } complete:^(NSError *error, NSString *filePath) {
        
        NSLog(@"task2下载完后的文件储存地址%@", filePath);
        
    }];
    
    
    [self startTasks];
}

- (void)startTasks
{
    [self.task1 start];
    [self.task2 start];
}


- (void)suspend
{
    [self.task1 suspend];
    [self.task2 suspend];
}


@end
