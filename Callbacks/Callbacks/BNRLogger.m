//
//  BNRLogger.m
//  Callbacks
//
//  Created by X on 30/11/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import "BNRLogger.h"

@implementation BNRLogger

-(NSString *)lastTimeString
{
    static NSDateFormatter *dateFormatter = nil;
    if (!dateFormatter)
    {
        dateFormatter = [[NSDateFormatter alloc] init];
        dateFormatter.timeStyle = NSDateFormatterMediumStyle;
        dateFormatter.dateStyle = NSDateFormatterMediumStyle;
        NSLog(@"Created dateFormatter");
    }
    return [dateFormatter stringFromDate:self.lastTime];
}

-(void)updateLastTime:(NSTimer *)t
{
    NSDate *now = [NSDate date];
    self.lastTime = now;
    NSLog(@"Just set time to %@", self.lastTimeString);
}

- (void)connection:(NSURLConnection *)connection
    didReceiveData:(NSData *)data
{
    NSLog(@"Received %lu bytes", [data length]);

    if (!_incomingData)
    {
        _incomingData = [[NSMutableData alloc] init];
    }

    [_incomingData appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"Got it all!");
    NSString *string = [[NSString alloc] initWithData:_incomingData
                                             encoding:NSUTF8StringEncoding];

    _incomingData = nil;
    NSLog(@"String has %lu characters", [string length]);

//    NSLog(@"The whole string is %@", string);
}

- (void)connection:(NSURLConnection *)connection
  didFailWithError:(NSError *)error
{
    NSLog(@"Connection failed: %@", [error localizedDescription]);
    _incomingData = nil;
}

- (void)zoneChange:(NSNotification *)note
{
    NSLog(@"The system time zone has changed!");
}

@end
