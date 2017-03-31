//
//  NSURL+MBYURLParse.m
//  MBYNSURL
//
//  Created by mabaoyan on 2017/3/31.
//  Copyright © 2017年 mabaoyan. All rights reserved.
//

#import "NSURL+MBYURLParse.h"

@implementation NSURL (MBYURLParse)

+ (NSDictionary *)queryComponentsOfURL:(NSURL *)url;{
    NSURLComponents *components = [NSURLComponents componentsWithURL:[url copy]
                                             resolvingAgainstBaseURL:YES];
    
    NSArray *queryItems = [components queryItems];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    for (NSURLQueryItem *item in queryItems) {
        dict[item.name] = item.value?:[NSNull null];
    }
    return [dict copy];
}

+ (NSString *)valueOfKey:(NSString *)key inUrl:(NSURL *)url;{
    return [self queryComponentsOfURL:url][key];
}

@end
