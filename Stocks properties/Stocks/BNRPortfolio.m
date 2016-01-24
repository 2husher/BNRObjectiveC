//
//  BNRPortfolio.m
//  Stocks
//
//  Created by X on 24/01/16.
//  Copyright (c) 2016 Alex Izotov. All rights reserved.
//

#import "BNRPortfolio.h"
#import "BNRForeignStockHolding.h"

@implementation BNRPortfolio
{
    NSMutableArray *_holdings;
}

- (void)setHoldings:(NSArray *)holdings
{
    _holdings = [holdings mutableCopy];
}

- (NSArray *)holdings
{
    return [_holdings copy];
}

- (void)addHolding:(BNRStockHolding *)h
{
    if (!_holdings){
        _holdings = [[NSMutableArray alloc] init];
    }
    [_holdings addObject:h];
}

- (float)totalValue
{
    __block float total = 0;
    [_holdings enumerateObjectsUsingBlock:
     ^(BNRForeignStockHolding *holding, NSUInteger idx, BOOL *stop) {
         total += holding.valueInDollars;
    }];
    return total;
}

@end
