//
//  NSURL+MBYURLParse.h
//  MBYNSURL
//
//  Created by mabaoyan on 2017/3/31.
//  Copyright © 2017年 mabaoyan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURL (MBYURLParse)

+ (NSDictionary *)queryComponentsOfURL:(NSURL *)url;

+ (NSString *)valueOfKey:(NSString *)key inUrl:(NSURL *)url;
@end
