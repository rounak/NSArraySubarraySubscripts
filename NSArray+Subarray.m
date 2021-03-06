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
    NSRegularExpression *indexOnwardsRegex = [[NSRegularExpression alloc] initWithPattern:@"[0-9]+\\.\\.\\." options:0 error:&err];
    
    if ([[rangeFormatRegex stringByReplacingMatchesInString:range options:0 range:NSMakeRange(0, [range length]) withTemplate:@""] isEqualToString:@""])
    {    
        NSArray *limits = [range componentsSeparatedByString:@".."];

    

        NSUInteger start = [limits[0] intValue];
        if (start >= self.count) {
            return nil;
        }
        NSUInteger end = [limits[1] intValue];
        end = (end >= self.count) ? self.count - 1 : end;
        return [self subarrayWithRange:NSMakeRange(start, end - start + 1)];

    }
    else if([[indexOnwardsRegex stringByReplacingMatchesInString:range options:0 range:NSMakeRange(0, [range length]) withTemplate:@""] isEqualToString:@""])
    {
        NSArray *limits = [range componentsSeparatedByString:@"..."];
        
        NSUInteger start = [limits[0] intValue];
        if (start >= self.count) {
            return nil;
        }
        NSUInteger end = range.length-1;
        return [self subarrayWithRange:NSMakeRange(start, end - start + 1)];

    }
    return nil;
}
@end
