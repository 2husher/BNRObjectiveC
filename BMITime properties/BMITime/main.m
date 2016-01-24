//
//  main.m
//  BMITime
//
//  Created by X on 20/01/16.
//  Copyright (c) 2016 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"
#import "BNRAsset.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSMutableArray *employees = [[NSMutableArray alloc] init];

        for (int i = 0; i < 10; i++) {
            BNREmployee *mikey = [[BNREmployee alloc] init];

            mikey.heightInMeters = 1.8 - i/10.0;
            mikey.weightInKilos = 90 + i;
            mikey.employeeID = i;

            [employees addObject:mikey];
        }

        BNRAsset *assetZero = [[BNRAsset alloc] init];
        assetZero.label = [NSString stringWithFormat:@"Laptop %d", 22];
        assetZero.resaleValue = 200;
        [employees[5] addAsset:assetZero];

        for (int i = 0; i < 10; i++) {
            BNRAsset *asset = [[BNRAsset alloc] init];

            asset.label = [NSString stringWithFormat:@"Laptop %d", i];
            asset.resaleValue = 350 + i * 17;

            NSUInteger randIdx = random() % [employees count];
            BNREmployee *employee = employees[randIdx];
            [employee addAsset:asset];
        }

        NSLog(@"Employees %@", employees);

        NSLog(@"Employee 6's assets %@ before removing", [employees[5] assets]);
        [employees[5] removeAsset:assetZero];
        NSLog(@"Employee 6's assets %@ after removing", [employees[5] assets]);

        NSLog(@"Giving up ownership of one employee");
        [employees removeObjectAtIndex:5];

        NSLog(@"Giving up ownership of array");
        employees = nil;

    }
    return 0;
}
