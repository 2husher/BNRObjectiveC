//
//  main.m
//  BMITime
//
//  Created by X on 20/01/16.
//  Copyright (c) 2016 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        BNREmployee *mikey = [[BNREmployee alloc] init];

        mikey.heightInMeters = 1.8;
        mikey.weightInKilos = 70;
        mikey.employeeID = 12;
        mikey.hireDate = [NSDate dateWithTimeIntervalSinceReferenceDate:1000000];

        int weight = mikey.weightInKilos;
        float height = mikey.heightInMeters;

        NSLog(@"Mikey's weight is %i kg and his height is %0.2f m", weight, height);
        NSLog(@"%@ hired on %@", mikey, mikey.hireDate);

        float bmi = [mikey bodyMassIndex];
        double years = [mikey yearsOfEmployment];
        NSLog(@"Body mass index is %f, works for %.2f years", bmi, years);
    }
    return 0;
}
