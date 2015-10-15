//
//  NSArray+JJSafeArray.m
//  JJSafeArray
//
//  Created by jojoting on 15/10/3.
//  Copyright © 2015年 jojoting. All rights reserved.
//

#import "NSArray+TDSafeArray.h"

@implementation NSArray (TDSafeArray)


- (id)safe_objectAtIndex:(NSUInteger )index{
    if (index > self.count) {
        //index超出数组界限
        return nil;
    }
    
    id obj = [self objectAtIndex:index];
    return obj;
}

- (NSArray *)safe_objcetsAtIndexes:(NSIndexSet *)indexSet{
    NSUInteger firstIndex = indexSet.firstIndex;
    NSUInteger lastIndex = indexSet.lastIndex;
    
    if (firstIndex > self.count) {
        //first index超出数组界限
        return nil;
    }
    if (lastIndex > self.count) {
        //last index超出数组界限
        return nil;
    }
    
    NSArray *array = [self objectsAtIndexes:indexSet];
    return array;
}


@end
