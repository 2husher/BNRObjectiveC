//
//  BNRStockHolding.m
//  Stocks
//
//  Created by X on 20/01/16.
//  Copyright (c) 2016 Alex Izotov. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (void)setPurchaseSharePrice:(float)psp
{
    _purchaseSharePrice = psp;
}

- (float)purchaseSharePrice
{
    return _purchaseSharePrice;
}

- (void)setCurrentSharePrice:(float)csp
{
    _currentSharePrice = csp;
}

- (float)currentSharePrice
{
    return _currentSharePrice;
}

- (void)setNumberOfShares:(int)num
{
    _numberOfShares = num;
}

- (int)numberOfShares
{
    return _numberOfShares;
}

- (float)costInDollars
{
    return [self purchaseSharePrice] * [self numberOfShares];
}

- (float)valueInDollars
{
    return [self currentSharePrice] * [self numberOfShares];
}

@end
