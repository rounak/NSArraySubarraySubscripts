//
//  NSArray+Subarray.m
//  NSArraySubarray
//
//  Created by Rounak Jain on 26/06/13.
//  Copyright (c) 2013 Rounak Jain. All rights reserved.
//

#import "NSArray+Subarray.h"

@implementation NSArray (Subarray)
- (id)objectForKeyedSubscript:(id <NSCopying>)key
{
    NSString *range = (NSString*)key;
    NSError *err;
    NSRegularExpression *rangeFormatRegex = [[NSRegularExpression alloc] initWithPattern:@"[0-9]+\\.\\.[0-9]+" options:0 error:&err];
    
    if (![[rangeFormatRegex stringByReplacingMatchesInString:range options:0 range:NSMakeRange(0, [range length]) withTemplate:@""] isEqualToString:@""]) {
        return nil;
    }
    NSArray *limits = [range componentsSeparatedByString:@".."];
//    if (!limits || limits.count!=2) {
//        return nil;
//    }
    

    NSUInteger start = [limits[0] intValue];
    NSUInteger end = [limits[1] intValue];
    end = end > range.length ? range.length - 1 : end;
    return [self subarrayWithRange:NSMakeRange(start, end - start + 1)];
}
@end
