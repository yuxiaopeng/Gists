//
//  IPParser.m
//  Gists
//
//  Created by 于晓鹏 on 2021/1/21.
//  Copyright © 2021 于晓鹏. All rights reserved.
//

#import "IPParser.h"
#import <netdb.h>
#include <arpa/inet.h>

@implementation IPParser

// 根据给定的URL获取DNS解析之后对应的IP地址(譬如传入http://www.github.com)
+ (NSString *)getIPWithURL:(NSString *)url {
    NSString *ip = @"";
    if (!url) { // URL为空直接返回
        return ip;
    }
    NSString *host = [[NSURL URLWithString:url] host];
    if(host.length == 0)  return  @"";
    struct hostent *host_entry = gethostbyname([host cStringUsingEncoding:NSASCIIStringEncoding]);
    if (!host_entry) {  // host entry为空
        return ip;
    }
    int host_length = sizeof((struct in_addr *)host_entry);
    if (host_length <= 0) {
        return ip;
    }
    char *buff = inet_ntoa(*((struct in_addr *)host_entry->h_addr_list[0]));
    if (buff) {
        ip = [NSString stringWithUTF8String:buff];
    }
    return ip;
}

@end
