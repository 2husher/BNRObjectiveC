//
//  BNRStockHolding.h
//  Stocks
//
//  Created by X on 20/01/16.
//  Copyright (c) 2016 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject
{
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

- (void)setPurchaseSharePrice:(float)psp;
- (float)purchaseSharePrice;
- (void)setCurrentSharePrice:(float)csp;
- (float)currentSharePrice;
- (void)setNumberOfShares:(int)num;
- (int)numberOfShares;

- (float)costInDollars;
- (float)valueInDollars;

@end
