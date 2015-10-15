//
//  NSArray+JJSafeArray.h
//  JJSafeArray
//
//  Created by jojoting on 15/10/3.
//  Copyright © 2015年 jojoting. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (TDSafeArray)


- (id)safe_objectAtIndex:(NSUInteger )index;

- (NSArray *)safe_objcetsAtIndexes:(NSIndexSet *)indexSet;

@end
