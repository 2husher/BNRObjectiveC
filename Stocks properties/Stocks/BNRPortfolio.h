//
//  BNRPortfolio.h
//  Stocks
//
//  Created by X on 24/01/16.
//  Copyright (c) 2016 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRStockHolding;

@interface BNRPortfolio : NSObject

@property (nonatomic, copy) NSArray *holdings;

- (void)addHolding:(BNRStockHolding *)h;
- (float)totalValue;

@end
