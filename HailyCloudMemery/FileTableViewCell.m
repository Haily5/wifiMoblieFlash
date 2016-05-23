//
//  FileTableViewCell.m
//  HailyCloudMemery
//
//  Created by 易海 on 16/5/23.
//  Copyright © 2016年 易海. All rights reserved.
//

#import "FileTableViewCell.h"

@interface FileTableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *iconImage;
@property (weak, nonatomic) IBOutlet UILabel *fileName;
@property (weak, nonatomic) IBOutlet UILabel *fileSize;

@end

@implementation FileTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

- (void)setFileData:(NSDictionary *)fileData
{
    _fileData = fileData;
    BOOL isDir = [fileData[@"isDirectory"] boolValue];
    NSString *fileName = fileData[@"name"];
    long fileSize = [fileData[@"size"] longValue];
    
    self.iconImage.image = isDir ? [UIImage imageNamed:@"dirIcon"] : [UIImage imageNamed:@"fileIcon"];
    self.fileName.text = fileName;
    self.fileSize.text = [NSString stringWithFormat:@"%ld KB",fileSize / 1024 / 1024];
}

@end
