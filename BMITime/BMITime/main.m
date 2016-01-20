//
//  main.m
//  BMITime
//
//  Created by X on 20/01/16.
//  Copyright (c) 2016 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        BNRPerson *mikey = [[BNRPerson alloc] init];

        [mikey setWeightInKilos:70];
        [mikey setHeightInMeters:1.8];

        int weight = [mikey weightInKilos];
        float height = [mikey heightInMeters];

        NSLog(@"Mikey's weight is %i kg and his height is %0.2f m", weight, height);

        float bmi = [mikey bodyMassIndex];
        NSLog(@"Mikey's body mass index is %f", bmi);

//        weight = mikey->_weightInKilos;
//        height = mikey->_heightInMeters;
//        NSLog(@"mikey's %i kg and %f m", weight, height);

    }
    return 0;
}
