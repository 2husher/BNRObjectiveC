//
//  BNRPerson.m
//  BMITime
//
//  Created by X on 20/01/16.
//  Copyright (c) 2016 Alex Izotov. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson

- (float)heightInMeters
{
    return _heightInMeters;
}

- (void)setHeightInMeters:(float)h
{
    _heightInMeters = h;
}

- (int)weightInKilos
{
    return _weightInKilos;
}

- (void)setWeightInKilos:(int)w
{
    _weightInKilos = w;
}

- (float)bodyMassIndex
{
    //return _weightInKilos / (_heightInMeters * _heightInMeters);
    return self->_weightInKilos / (self->_heightInMeters * self->_heightInMeters);
//    float h = [self heightInMeters];
//    return [self weightInKilos]/ (h * h);
}

@end
