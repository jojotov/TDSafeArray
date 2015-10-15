//
//  main.m
//  TDSafeArray
//
//  Created by jojoting on 15/10/15.
//  Copyright © 2015年 jojoting. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TDSafeArray.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSArray *arr = [[NSArray alloc]initWithObjects:@"1",@"2",@"3",@"4",@"5", nil];
        NSInteger index = 6;
        id result = [arr safe_objectAtIndex:index];
        NSLog(@"result :%@",result);

        

    }
    return 0;
}
