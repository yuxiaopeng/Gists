//
//  IPParser.h
//  Gists
//
//  Created by 于晓鹏 on 2021/1/21.
//  Copyright © 2021 于晓鹏. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface IPParser : NSObject

+ (NSString *)getIPWithURL:(NSString *)url;

@end

NS_ASSUME_NONNULL_END
