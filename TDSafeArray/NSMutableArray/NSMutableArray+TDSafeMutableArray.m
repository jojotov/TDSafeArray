//
//  NSMutableArray+JJSafeMutableArray.m
//  JJSafeArray
//
//  Created by jojoting on 15/10/3.
//  Copyright © 2015年 jojoting. All rights reserved.
//

#import "NSMutableArray+TDSafeMutableArray.h"

@implementation NSMutableArray (TDSafeMutableArray)

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

- (void)safe_removeObjectAtIndex:(NSUInteger)index completion:(void (^)(BOOL isSuccess))block{
    if (index > self.count) {
        //index超出数组界限
        if (block) {
            block(NO);
        }
    }else{
        [self removeObjectAtIndex:index];
        if (block) {
            block(YES);
        }
    }
    
}

- (void)safe_replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject completion:(void (^)(BOOL isSuccess))block{
    if (index > self.count) {
        //index超出数组界限
        if (block) {
            block(NO);
        }
    }else{
        [self replaceObjectAtIndex:index withObject:anObject];
        if (block) {
            block(YES);
        }
    }
    
}

- (void)safe_removeObjectsAtIndexes:(NSIndexSet *)indexes completion:(void (^)(BOOL isSuccess))block{
    NSUInteger firstIndex = indexes.firstIndex;
    NSUInteger lastIndex = indexes.lastIndex;
    
    if (firstIndex > self.count) {
        //first index超出数组界限
        if (block) {
            block(NO);
        }
    }
    if (lastIndex > self.count) {
        //last index超出数组界限
        [self removeObjectsAtIndexes:indexes];
        if (block) {
            block(YES);
        }
    }

}

- (void)safe_replaceObjectsAtIndexes:(NSIndexSet *)indexes withObjects:(NSArray<id> *)objects completion:(void (^)(BOOL isSuccess))block{
    NSUInteger firstIndex = indexes.firstIndex;
    NSUInteger lastIndex = indexes.lastIndex;
    
    if (firstIndex > self.count) {
        //first index超出数组界限
        if (block) {
            block(NO);
        }
    }
    if (lastIndex > self.count) {
        //last index超出数组界限
        [self replaceObjectsAtIndexes:indexes withObjects:objects];
        if (block) {
            block(YES);
        }
    }

}


@end
