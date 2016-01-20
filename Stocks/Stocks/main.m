//
//  main.m
//  Stocks
//
//  Created by X on 20/01/16.
//  Copyright (c) 2016 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        BNRStockHolding *firstShare = [[BNRStockHolding alloc] init];
        [firstShare setPurchaseSharePrice:2.30];
        [firstShare setCurrentSharePrice:4.50];
        [firstShare setNumberOfShares:40];

        BNRStockHolding *secondShare = [[BNRStockHolding alloc] init];
        [secondShare setPurchaseSharePrice:12.19];
        [secondShare setCurrentSharePrice:10.56];
        [secondShare setNumberOfShares:90];

        BNRStockHolding *thirdShare = [[BNRStockHolding alloc] init];
        [thirdShare setPurchaseSharePrice:45.10];
        [thirdShare setCurrentSharePrice:49.51];
        [thirdShare setNumberOfShares:210];

        NSMutableArray *stocks = [[NSMutableArray alloc] init];
        stocks[0] = firstShare;
        stocks[1] = secondShare;
        stocks[2] = thirdShare;

        for (BNRStockHolding *stock in stocks) {
            NSLog(@"Stock cost is %.2f dollars, value is %.2f dollars",
                  [stock costInDollars], [stock valueInDollars]);
        }
    }
    return 0;
}
