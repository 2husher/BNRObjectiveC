//
//  main.m
//  Constants
//
//  Created by X on 30/11/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Blender.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSLog(@"\u03c0 is %f", M_PI);
        NSLog(@"%d is larger", MAX(10, 12));

        NSLocale *here = [NSLocale currentLocale];
        NSString *currency = [here objectForKey:NSLocaleCurrencyCode];
        NSLog(@"Money is %@", currency);

        Blender *blender = [[Blender alloc] init];
        blender.speed = BlenderSpeedStir;
        NSLog(@"Blender speed is %d", blender.speed);
    }
    return 0;
}
