//
//  main.m
//  MBYNSURL
//
//  Created by mabaoyan on 2017/3/31.
//  Copyright © 2017年 mabaoyan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSURL+MBYURLParse.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSURL *url = [NSURL URLWithString:@"https://www.example.jd.com/action?a=b&c=d&f=e"];
        NSDictionary *dict = [NSURL queryComponentsOfURL:url];
        NSString *value = [NSURL valueOfKey:@"a" inUrl:url];
        NSLog(@"%@,%@",dict,value);
    }
    return 0;
}
