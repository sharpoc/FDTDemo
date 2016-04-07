//
//  DataTool.h
//  HeXunChat
//
//  Created by lvxue on 16/3/20.
//  Copyright © 2016年 lvxue. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataTool : NSObject

+ (void)getChatRoomInfoWithType:(NSString *) type Count:(NSString *) count success:(void(^)(id json)) success failure:(void(^)(id json)) failure;

+ (void)getMessageWithRoomID:(NSString *) roomID isZhiBo:(NSString *) isZhiBo success:(void(^)(id json)) success failure:(void(^)(id json)) failure;

@end
