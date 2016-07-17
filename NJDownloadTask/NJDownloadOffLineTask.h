

#import <UIKit/UIKit.h>


@interface NJDownloadOffLineTask : NSObject

/** task对象本身, 需要手动开始任务*/
+ (instancetype)downloadTaskWithURL:(NSString *)URLStr progress:(void(^)(CGFloat progress))progress complete:(void(^)(NSError *error, NSString *filePath))complete;
/**
 *  开始任务
 */
- (void)start;

/**
 *  暂停任务
 */
- (void)suspend;

@end
