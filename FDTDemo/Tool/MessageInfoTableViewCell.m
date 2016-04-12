//
//  MessageInfoTableViewCell.m
//  HeXunChat
//
//  Created by lvxue on 16/3/22.
//  Copyright © 2016年 lvxue. All rights reserved.
//

#import "MessageInfoTableViewCell.h"

@interface MessageInfoTableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;


@end


@implementation MessageInfoTableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView {
    MessageInfoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MessageInfoTableViewCell"];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil] firstObject];
    }
    return cell;
}


-(void)setMsg:(MessageInfo *)msg{

    [self.nameLabel setText:msg.UserName];
    [self.timeLabel setText:msg.AddTime];
    [self.contentLabel setText:msg.MessageInfo];
}

@end
