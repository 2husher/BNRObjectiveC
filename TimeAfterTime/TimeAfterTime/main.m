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
        NSDate *now = [NSDate date];
        NSLog(@"This NSDate object lives at %p", now);
        NSLog(@"The date is %@", now);

        double seconds = [now timeIntervalSince1970];
        NSLog(@"It passed %f seconds since 1970", seconds);

        NSHost *host = [NSHost currentHost];
        NSString *hostName = [host localizedName];
        NSLog(@"Host name is %@", hostName);
    }
    return 0;
}
