//
//  main.m
//  ProperRegularWords
//
//  Created by X on 20/01/16.
//  Copyright (c) 2016 Alex Izotov. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSMutableString *nameString = [NSMutableString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                                       encoding:NSUTF8StringEncoding
                                                                          error:NULL];
        if ([nameString hasSuffix:@"\n"]) {
            [nameString deleteCharactersInRange:NSMakeRange(nameString.length - 1, 1)];
        }
        NSArray *names = [nameString  componentsSeparatedByString:@"\n"];

        NSMutableString *wordString = [NSMutableString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                                       encoding:NSUTF8StringEncoding
                                                                          error:NULL];
        if ([wordString hasSuffix:@"\n"]) {
            [wordString deleteCharactersInRange:NSMakeRange(wordString.length - 1, 1)];
        }
        NSArray *words = [wordString componentsSeparatedByString:@"\n"];

        for (NSString *name in names) {
            NSUInteger index = [words indexOfObject:[name lowercaseString]];

            if (index != NSNotFound) {
                NSLog(@"Proper and regular words pair is %@ - %@", name, words[index]);
            }
        }
    }
    return 0;
}
