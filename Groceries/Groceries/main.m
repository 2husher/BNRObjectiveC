//
//  main.m
//  Groceries
//
//  Created by X on 20/01/16.
//  Copyright (c) 2016 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSMutableArray *groceriesList = [[NSMutableArray alloc] init];
        NSString *bread = @"Loaf of bread";
        NSString *milk = @"Container of milk";
        NSString *butter = @"Stick of butter";

        [groceriesList addObject:butter];
        [groceriesList insertObject:bread atIndex:0];
        [groceriesList insertObject:milk atIndex:1];

        NSLog(@"My groceries list is:");
        for (NSString *item in groceriesList) {
            NSLog(@"%@", item);
        }
    }
    return 0;
}
