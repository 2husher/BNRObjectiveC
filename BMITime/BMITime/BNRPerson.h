//
//  BNRPerson.h
//  BMITime
//
//  Created by X on 20/01/16.
//  Copyright (c) 2016 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject
{
//@protected
    float _heightInMeters;
    int _weightInKilos;
}

- (float)heightInMeters;
- (void)setHeightInMeters:(float)h;
- (int)weightInKilos;
- (void)setWeightInKilos:(int)w;

- (float)bodyMassIndex;

@end
