//
//  main.m
//  Stocks
//
//  Created by X on 20/01/16.
//  Copyright (c) 2016 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRForeignStockHolding.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        BNRStockHolding *firstShare = [[BNRStockHolding alloc] init];
        firstShare.purchaseSharePrice = 2.30;
        firstShare.currentSharePrice = 4.50;
        firstShare.numberOfShares = 40;

        BNRStockHolding *secondShare = [[BNRStockHolding alloc] init];
        secondShare.purchaseSharePrice = 12.19;
        secondShare.currentSharePrice = 10.56;
        secondShare.numberOfShares = 90;

        BNRStockHolding *thirdShare = [[BNRStockHolding alloc] init];
        thirdShare.purchaseSharePrice = 45.10;
        thirdShare.currentSharePrice = 49.51;
        thirdShare.numberOfShares = 210;

        BNRForeignStockHolding *forthShare = [[BNRForeignStockHolding alloc] init];
        forthShare.purchaseSharePrice = 2.30;
        forthShare.currentSharePrice = 4.50;
        forthShare.numberOfShares = 40;
        forthShare.conversionRate = 0.94;

        NSMutableArray *stocks = [[NSMutableArray alloc] init];
        stocks[0] = firstShare;
        stocks[1] = secondShare;
        stocks[2] = thirdShare;
        stocks[3] = forthShare;

        [stocks enumerateObjectsUsingBlock:
         ^(id share, NSUInteger ind, BOOL *stop) {
             NSLog(@"Stock cost is %.2f dollars, value is %.2f dollars",
                   [share costInDollars], [share valueInDollars]);
        }];
    }
    return 0;
}
