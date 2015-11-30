//
//  main.m
//  Stringz
//
//  Created by X on 30/11/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {

        NSMutableString *string = [[NSMutableString alloc] init];
        for (int i = 0; i < 10; i++)
        {
            [string appendString:@"Aaron is cool!\n"];
        }

        NSError *error;

        BOOL success = [string writeToFile:@"/tmp/cool.txt"
                                atomically:YES
                                  encoding:NSUTF8StringEncoding
                                     error:&error];

        if (success)
        {
            NSLog(@"Done writing to /tmp/cool.txt");
        }
        else
        {
            NSLog(@"Writing to /tmp/cool.txt is failed: %@", [error localizedDescription]);
        }

        NSError *readError;
        NSString *readString = [[NSString alloc]
                            initWithContentsOfFile:@"/etc/resolv.conf"
                            encoding:NSASCIIStringEncoding
                            error:&readError];
        if (!readString)
        {
            NSLog(@"Read failed: %@", [readError localizedDescription]);
        }
        else
        {
            NSLog(@"Read succeed. resolv.conf looks like %@", readString);
        }

    }
    return 0;
}
