//
//  main.m
//  NSArraySubarraySubscripts
//
//  Created by Rounak Jain on 26/06/13.
//  Copyright (c) 2013 Rounak Jain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSArray+Subarray.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSArray *arr = [NSArray arrayWithObjects:@"1",@"2",@"3",@"5",@"9", nil];
        
        NSLog(@"%@",arr[@"1..3"]);
        
    }
    return 0;
}

