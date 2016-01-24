//
//  BNRStockHolding.m
//  Stocks
//
//  Created by X on 20/01/16.
//  Copyright (c) 2016 Alex Izotov. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float)costInDollars
{
    return self.purchaseSharePrice * self.numberOfShares;
}

- (float)valueInDollars
{
    return self.currentSharePrice * self.numberOfShares;
}

@end
