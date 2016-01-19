//
//  main.m
//  TimeAfterTime
//
//  Created by X on 30/11/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSDate *now = [[NSDate alloc] init];
        NSLog(@"This NSDate object lives at %p", now);
        NSLog(@"The date is %@", now);

        double seconds = [now timeIntervalSince1970];
        NSLog(@"It passed %f seconds since 1970", seconds);

        NSHost *host = [NSHost currentHost];
        NSString *hostName = [host localizedName];
        NSLog(@"Host name is %@", hostName);

        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds it will be %@", later);

        NSCalendar *cal = [NSCalendar currentCalendar];
        NSLog(@"My calendar is %@", [cal calendarIdentifier]);
        unsigned long day = [cal ordinalityOfUnit:NSCalendarUnitDay
                                           inUnit:NSCalendarUnitMonth
                                          forDate:now];
        NSLog(@"This is %lu day of the month", day);

        NSDateComponents *comps = [[NSDateComponents alloc] init];
        comps.year = 1985;
        comps.month = 8;
        comps.day = 25;
        comps.hour = 20;
        comps.minute = 16;
        comps.second = 0;
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate *birthDate = [g dateFromComponents:comps];
        double secondsIAmAlive = [now timeIntervalSinceDate:birthDate];
        NSLog(@"Number of seconds I am alive %f", secondsIAmAlive);
    }
    return 0;
}
