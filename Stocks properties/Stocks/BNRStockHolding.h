//
//  BNRStockHolding.h
//  Stocks
//
//  Created by X on 20/01/16.
//  Copyright (c) 2016 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

@property (nonatomic) float purchaseSharePrice;
@property (nonatomic) float currentSharePrice;
@property (nonatomic) int numberOfShares;
@property (nonatomic, strong) NSString *tickerSymbol;
//@property (nonatomic, copy) NSString *tickerSymbol;

- (float)costInDollars;
- (float)valueInDollars;

@end
