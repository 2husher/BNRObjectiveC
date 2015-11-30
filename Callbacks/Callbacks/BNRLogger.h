//
//  BNRLogger.h
//  Callbacks
//
//  Created by X on 30/11/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRLogger : NSObject<NSURLConnectionDelegate,
                                NSURLConnectionDataDelegate>
{
    NSMutableData *_incomingData;
}

@property (nonatomic) NSDate *lastTime;
-(NSString *)lastTimeString;
-(void)updateLastTime:(NSTimer *)t;

@end
