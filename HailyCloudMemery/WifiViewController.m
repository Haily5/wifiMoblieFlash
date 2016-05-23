//
//  WifiViewController.m
//  HailyCloudMemery
//
//  Created by 易海 on 16/5/23.
//  Copyright © 2016年 易海. All rights reserved.
//

#import "WifiViewController.h"
#import "GCDWebUploader.h"

@interface WifiViewController ()
@property (weak, nonatomic) IBOutlet UILabel *msgLabel;
@property (nonatomic, strong) GCDWebUploader *uploader;
@end

@implementation WifiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.uploader start];
    self.title = @"wifi 传输";
    NSURL *url = self.uploader.serverURL;
    self.msgLabel.text = [NSString stringWithFormat:@"请在同一wifi下输入: %@",url];
    // Do any additional setup after loading the view.
    [[UIApplication sharedApplication] setIdleTimerDisabled:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    if (self.back) self.back();
}

- (void)dealloc
{
    [self.uploader stop];
    [[UIApplication sharedApplication] setIdleTimerDisabled:NO];
}

- (GCDWebUploader *)uploader
{
    if (!_uploader) {
        _uploader = ({
            GCDWebUploader *uploader = [[GCDWebUploader alloc]initWithUploadDirectory:diskPath];
            uploader;
        });
    }
    return _uploader;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
