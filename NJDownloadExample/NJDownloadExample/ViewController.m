//
//  ViewController.m
//  NJDownloadExample
//
//  Created by apple on 16/7/26.
//  Copyright © 2016年 NJHu. All rights reserved.
//

#import "ViewController.h"
#import "NJDownloadOffLineTask.h"
@interface ViewController ()
/** task1 */
@property (nonatomic, strong) NJDownloadOffLineTask *task1;

/** task2 */
@property (nonatomic, strong) NJDownloadOffLineTask *task2;

/** progressView */
@property (nonatomic, weak) IBOutlet UIProgressView *progressView1;


/** progressView2 */
@property (nonatomic, weak) IBOutlet UIProgressView *progressView2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NJDownloadOffLineTask *task1 = [NJDownloadOffLineTask downloadTaskWithURL:@"http://e.hiphotos.baidu.com/image/h%3D200/sign=c898bddf19950a7b6a3549c43ad0625c/14ce36d3d539b600be63e95eed50352ac75cb7ae.jpg" progress:^(CGFloat progress) {
        
        self.progressView1.progress = progress;
        
    } complete:^(NSError *error, NSString *filePath) {
        
        
    }];
    
    
    NJDownloadOffLineTask *task2 = [NJDownloadOffLineTask downloadTaskWithURL:@"http://f.hiphotos.baidu.com/image/h%3D200/sign=cc068d7ff203738dc14a0b22831ab073/91529822720e0cf3a2cdbc240e46f21fbe09aa33.jpg" progress:^(CGFloat progress) {
        
        self.progressView2.progress = progress;
        
    } complete:^(NSError *error, NSString *filePath) {
        
        
    }];
    
    [task1 start];
    
    [task2 start];
    
    [task1 suspend];
    
    [task2 suspend];
}




@end
