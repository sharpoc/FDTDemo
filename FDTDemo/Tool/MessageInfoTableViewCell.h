//
//  MessageInfoTableViewCell.h
//  HeXunChat
//
//  Created by lvxue on 16/3/22.
//  Copyright © 2016年 lvxue. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MessageInfo.h"

@interface MessageInfoTableViewCell : UITableViewCell

@property(nonatomic,strong) MessageInfo *msg;

+ (instancetype)cellWithTableView:(UITableView *)tableView;


@end
