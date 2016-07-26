# NXDownloader

- 0, 创建下载任务


```

    NJDownloadOffLineTask *task1 = [NJDownloadOffLineTask downloadTaskWithURL:@"http://e.hiphotos.baidu.com/image/h%3D200/sign=c898bddf19950a7b6a3549c43ad0625c/14ce36d3d539b600be63e95eed50352ac75cb7ae.jpg" progress:^(CGFloat progress) {
        
        self.progressView1.progress = progress;
        
    } complete:^(NSError *error, NSString *filePath) {
        
        
    }];

```


- 1, 可以开始下载任务<br>

```
[task1 start];

```

- 2, 可以暂停下载任务<br>

```

[task1 suspend];

```

- 3, 下载中程序崩溃, 下次打开下载同一个URL仍然继续下载<br>

- 4, 储存在caches里边<br>

- 5, 时刻传输下载进度<br>

- 6, 多任务同时子线程下载<br>
