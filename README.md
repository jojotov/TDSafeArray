# TDSafeArray
操作安全的NSArray与NSMutableArray扩展
重写了NSArray与NSMutableArray的部分方法，防止越界问题，如果越界会返回空值。

<H1>使用方法</H1>

导入头文件
```
#import "TDSafeArray.h"
```
调用安全的数组操作方法
```
NSArray *arr = [[NSArray alloc]initWithObjects:@"1",@"2",@"3",@"4",@"5", nil];
NSInteger index = 6;
id result = [arr safe_objectAtIndex:index];
NSLog(@"result :%@",result);
```

