//
//  NSMutableArray+JJSafeMutableArray.h
//  JJSafeArray
//
//  Created by jojoting on 15/10/3.
//  Copyright © 2015年 jojoting. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (TDSafeMutableArray)

- (id)safe_objectAtIndex:(NSUInteger )index;

- (NSArray *)safe_objcetsAtIndexes:(NSIndexSet *)indexSet;

- (void)safe_removeObjectAtIndex:(NSUInteger)index completion:(void (^)(BOOL isSuccess))block;

- (void)safe_replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject completion:(void (^)(BOOL isSuccess))block;

- (void)safe_removeObjectsAtIndexes:(NSIndexSet *)indexes completion:(void (^)(BOOL isSuccess))block;

- (void)safe_replaceObjectsAtIndexes:(NSIndexSet *)indexes withObjects:(NSArray<id> *)objects completion:(void (^)(BOOL isSuccess))block;



@end
