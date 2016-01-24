//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by X on 24/01/16.
//  Copyright (c) 2016 Alex Izotov. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

- (float)costInDollars
{
    return [super costInDollars] * self.conversionRate;
}

- (float)valueInDollars
{
    return [super valueInDollars] * self.conversionRate;
}

@end
