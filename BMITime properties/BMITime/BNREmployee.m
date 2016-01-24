//
//  BNREmployee.m
//  BMITime
//
//  Created by X on 20/01/16.
//  Copyright (c) 2016 Alex Izotov. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

@implementation BNREmployee
{
    NSMutableArray *_assets;
}

- (void)setAssets:(NSArray *)assets
{
    _assets = [assets mutableCopy];
}

- (NSArray *)assets
{
    return [_assets copy];
}

- (void)addAsset:(BNRAsset *)a
{
    if (!_assets)
    {
        _assets = [[NSMutableArray alloc] init];
    }
    [_assets addObject:a];
}

- (void)removeAsset:(BNRAsset *)a
{
    [_assets removeObject:a];
}

- (unsigned int)valueOfAssets
{
    __block unsigned int sum = 0;
    [_assets enumerateObjectsUsingBlock:
     ^(BNRAsset *asset, NSUInteger idx, BOOL *stop) {
        sum += asset.resaleValue;
    }];
    return sum;
}

- (double)yearsOfEmployment
{
    if (self.hireDate) {
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / (60.0 * 60.0 * 24.0 * 365.0);
    } else {
        return 0;
    }
}

- (float)bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>",
            self.employeeID, self.valueOfAssets];
}

- (void)dealloc
{
    NSLog(@"deallocing %@", self);
}

@end
