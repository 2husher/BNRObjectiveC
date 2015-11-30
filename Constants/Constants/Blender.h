//
//  Blender.h
//  Constants
//
//  Created by X on 30/11/15.
//  Copyright (c) 2015 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
    BlenderSpeedStir,
    BlenderSpeedChop,
    BlenderSpeedPulse
} BlenderSpeed;

@interface Blender : NSObject

@property (nonatomic) BlenderSpeed speed;

@end
