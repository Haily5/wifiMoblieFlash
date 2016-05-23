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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setFilePath:(NSString *)filePath
{
    _filePath = filePath;
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
