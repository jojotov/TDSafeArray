//
//  main.m
//  TDSafeArray
//
//  Created by jojoting on 15/10/15.
//  Copyright © 2015年 jojoting. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSArray+TDSafeArray.h"
#import "NSMutableArray+TDSafeMutableArray.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSArray *arr = [[NSArray alloc]initWithObjects:@"1",@"2",@"3",@"4",@"5", nil];
        
        NSRange range = NSMakeRange(3, 5);
        NSIndexSet *indexSet = [[NSIndexSet alloc]initWithIndexesInRange:range];
        
        NSArray *tmp = [arr safe_objcetsAtIndexes:indexSet];
        
        NSLog(@"objcets at indexes:%@",tmp);

    }
    return 0;
}
