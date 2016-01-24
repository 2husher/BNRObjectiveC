//
//  BNRAsset.m
//  BMITime
//
//  Created by X on 24/01/16.
//  Copyright (c) 2016 Alex Izotov. All rights reserved.
//

#import "BNRAsset.h"

@implementation BNRAsset

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
}

- (void)dealloc
{
    NSLog(@"deallocing %@", self);
}

@end
