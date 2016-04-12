//
//  MessageInfo.h
//  HeXunChat
//
//  Created by lvxue on 16/3/22.
//  Copyright © 2016年 lvxue. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MessageInfo : NSObject

@property(nonatomic,copy) NSString *UserName;
@property(nonatomic,copy) NSString *MessageInfo;
@property(nonatomic,copy) NSString *AddTime;
@property(nonatomic,assign) NSInteger _id;
@end
