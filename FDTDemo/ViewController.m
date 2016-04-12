//
//  ViewController.m
//  FDTDemo
//
//  Created by lvxue on 16/4/7.
//  Copyright © 2016年 lvxue. All rights reserved.
//

#import "ViewController.h"
#import "DataTool.h"
#import "MessageInfo.h"
#import "MJExtension.h"
#import "MessageInfoTableViewCell.h"
#import "UITableView+FDTemplateLayoutCell.h"

@interface ViewController ()

@property(nonatomic,strong) NSArray *msges;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"MessageInfoTableViewCell" bundle:nil] forCellReuseIdentifier:@"MessageInfoTableViewCell"];
    //[self.tableView registerClass:[MessageInfoTableViewCell class] forCellReuseIdentifier:@"MessageInfoTableViewCell"];
    
    //    self.tableView.estimatedRowHeight = 200;//预算行高
    //    self.tableView.fd_debugLogEnabled = YES;//开启log打印高度
    
    [self initData];
}

- (void)initData{
    
    [DataTool getMessageWithRoomID:@24 isZhiBo:@"0" success:^(id json) {
        
        NSArray *msges=[MessageInfo mj_objectArrayWithKeyValuesArray:json];
        self.msges=msges;
        [self.tableView reloadData];
        
    } failure:^(id json) {
        NSLog(@"%@",json);
    }];
}

#pragma mark - UITableView Datasource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.msges.count;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MessageInfoTableViewCell *cell=[MessageInfoTableViewCell cellWithTableView:tableView];
    [self configureCell:cell atIndexPath:indexPath];
    return cell;
}

- (void)configureCell:(MessageInfoTableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {
    cell.fd_enforceFrameLayout = NO; // Enable to use "-sizeThatFits:"
    //    if (indexPath.row % 2 == 0) {
    //        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    //    } else {
    //        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    //    }
    cell.msg = self.msges[indexPath.row];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //高度计算并且缓存
    return [tableView fd_heightForCellWithIdentifier:@"MessageInfoTableViewCell" cacheByIndexPath:indexPath configuration:^(MessageInfoTableViewCell *cell) {
        [self configureCell:cell atIndexPath:indexPath];
    }];
}


#pragma mark - UITableView Delegate methods
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
}


@end
