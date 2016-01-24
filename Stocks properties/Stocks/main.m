//
//  main.m
//  Stocks
//
//  Created by X on 20/01/16.
//  Copyright (c) 2016 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRForeignStockHolding.h"
#import "BNRPortfolio.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        BNRStockHolding *firstShare = [[BNRStockHolding alloc] init];
        firstShare.purchaseSharePrice = 2.30;
        firstShare.currentSharePrice = 4.50;
        firstShare.numberOfShares = 40;
        NSMutableString *spyStr = [NSMutableString stringWithFormat:@"XYZ"];
        firstShare.tickerSymbol = spyStr;

        BNRStockHolding *secondShare = [[BNRStockHolding alloc] init];
        secondShare.purchaseSharePrice = 12.19;
        secondShare.currentSharePrice = 10.56;
        secondShare.numberOfShares = 90;
        secondShare.tickerSymbol = @"ABC";

        BNRStockHolding *thirdShare = [[BNRStockHolding alloc] init];
        thirdShare.purchaseSharePrice = 45.10;
        thirdShare.currentSharePrice = 49.51;
        thirdShare.numberOfShares = 210;
        thirdShare.tickerSymbol = @"LMN";

        BNRForeignStockHolding *forthShare = [[BNRForeignStockHolding alloc] init];
        forthShare.purchaseSharePrice = 2.30;
        forthShare.currentSharePrice = 4.50;
        forthShare.numberOfShares = 40;
        forthShare.conversionRate = 0.94;
        forthShare.tickerSymbol = @"FRNSH";

        BNRPortfolio *portfolio = [[BNRPortfolio alloc] init];
        [portfolio addHolding:firstShare];
        [portfolio addHolding:secondShare];
        [portfolio addHolding:thirdShare];
        [portfolio addHolding:forthShare];

        [spyStr appendString:@"123"];

        NSArray *holdings = portfolio.holdings;
        [holdings enumerateObjectsUsingBlock:
         ^(BNRStockHolding *share, NSUInteger ind, BOOL *stop) {
             NSLog(@"Stock <%@> cost is %.2f dollars, value is %.2f dollars",
                   share.tickerSymbol, [share costInDollars], [share valueInDollars]);
        }];

        NSLog(@"Portfolio total value is %0.2f", [portfolio totalValue]);
    }
    return 0;
}
