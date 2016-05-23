//
//  WifiViewController.h
//  HailyCloudMemery
//
//  Created by 易海 on 16/5/23.
//  Copyright © 2016年 易海. All rights reserved.
//

#import <UIKit/UIKit.h>

#define documentsPath [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject]
#define diskPath [documentsPath stringByAppendingString:@"/disk"]

@interface WifiViewController : UIViewController
@property (nonatomic, copy) void (^back)();
@end
