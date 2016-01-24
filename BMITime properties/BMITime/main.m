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

        for (int i = 0; i < 10; i++) {
            BNRAsset *asset = [[BNRAsset alloc] init];

            asset.label = [NSString stringWithFormat:@"Laptop %d", i];
            asset.resaleValue = 350 + i * 17;

            NSUInteger randIdx = random() % [employees count];
            BNREmployee *employee = employees[randIdx];
            [employee addAsset:asset];
        }

        NSLog(@"Employees %@", employees);

        NSLog(@"Giving up ownership of one employee");
        [employees removeObjectAtIndex:5];

        NSLog(@"Giving up ownership of array");
        employees = nil;

    }
    return 0;
}
