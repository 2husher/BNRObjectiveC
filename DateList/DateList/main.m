//
//  main.m
//  DateList
//
//  Created by X on 20/01/16.
//  Copyright (c) 2016 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSDate *now = [[NSDate alloc] init];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];

//        NSArray *dateList = @[now, tomorrow, yesterday];
        NSMutableArray *dateList = [[NSMutableArray alloc] init];
        [dateList addObject:now];
        [dateList addObject:tomorrow];

        [dateList insertObject:yesterday atIndex:0];

       // NSLog(@"The first date is %@", dateList[0]);
       // NSLog(@"The third date is %@", dateList[2]);
//        NSLog(@"The forth date is %@", dateList[3]);

       // NSLog(@"Dates count in the array is %lu", [dateList count]);
//        NSUInteger dateCount = [dateList count];
//        for (int i = 0; i < dateCount; i++){
//            NSLog(@"Here is the date: %@", dateList[i]);
//        }
        for (NSDate *d in dateList) {
            NSLog(@"Here is the date: %@", d);
        }

        [dateList removeObjectAtIndex:0];
        NSLog(@"Now the first object is %@", dateList[0]);
    }
    return 0;
}
