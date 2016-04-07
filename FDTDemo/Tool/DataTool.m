//
//  DataTool.m
//  HeXunChat
//
//  Created by lvxue on 16/3/20.
//  Copyright © 2016年 lvxue. All rights reserved.
//

#import "DataTool.h"
#import "HttpTool.h"

@implementation DataTool

+ (void)getChatRoomInfoWithType:(NSString *)type Count:(NSString *)count success:(void (^)(id))success failure:(void (^)(id))failure{
    
    NSString *url=[NSString stringWithFormat:@"http://api.chat.hexun.com/list/chatlist.aspx"];
    NSMutableDictionary *dict=[NSMutableDictionary dictionary];
    dict[@"roomtype"]=type;
    dict[@"count"]=count;

    [HttpTool get:url params:dict success:^(id json) {
        
        if (success) {
            success(json);
        }
    } failure:^(id json) {
        
        if (failure) {
            failure(json);
        }
    }];
}

//http://chat.hexun.com/api/GetMsgList.aspx?func=frist&roomid=24&iszhibo=0&callback=a

+ (void)getMessageWithRoomID:(NSString *)roomID isZhiBo:(NSString *)isZhiBo success:(void (^)(id))success failure:(void (^)(id))failure{

    NSString *url=[NSString stringWithFormat:@"http://chat.hexun.com/AjaxPage/AjaxHandler.ashx"];
    NSMutableDictionary *dict=[NSMutableDictionary dictionary];
    dict[@"MethodName"]=@"FristDisplay";
    dict[@"RoomID"]=roomID;
    dict[@"IsLeftRoRight"]=isZhiBo;
    
    [HttpTool get:url params:dict success:^(id json) {
        
        if (success) {
            success(json);
        }
    } failure:^(id json) {
        
        if (failure) {
            failure(json);
        }
    }];
}


@end
