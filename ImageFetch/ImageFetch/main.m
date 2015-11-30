//
//  main.m
//  ImageFetch
//
//  Created by X on 30/11/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSURL *url = [NSURL URLWithString:
                      @"http://www.google.com/images/logos/ps_logo2.png"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];

        NSError *error;
        NSData *data = [NSURLConnection sendSynchronousRequest:request
                                             returningResponse:NULL
                                                         error:&error];
        if (!data)
        {
            NSLog(@"Fetch failed: %@", [error localizedDescription]);
            return 1;
        }

        NSLog(@"The file length is %lu bytes", (unsigned long)[data length]);

        BOOL written = [data writeToFile:@"/tmp/google.png"
                                 options:NSDataWritingAtomic
                                   error:&error];
        if (!written)
        {
            NSLog(@"Write failed: %@", [error localizedDescription]);
            return 1;
        }

        NSLog(@"Success!");

        NSData *readData = [NSData dataWithContentsOfFile:@"/tmp/google.png"];
        NSLog(@"The file read from the disk length is %lu", (unsigned long)[readData length]);
    }
    return 0;
}
