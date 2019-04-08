//
//  DataExtractor.m
//  ProductCalculator
//
//  Created by Александр Селиванов on 04/04/2019.
//  Copyright © 2019 Alexander Selivanov. All rights reserved.
//

#import "DataExtractor.h"

@implementation DataExtractor

- (nonnull NSArray<NSString *> *)dataWithContentsOfFile:(nonnull NSString *)filePath {
    
    NSError *error = nil;
    
    NSString *dataString = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:&error];
    
    if (error != nil) {
        NSLog(@"%@", error.localizedDescription);
    } else {
        return [dataString componentsSeparatedByString:@";\n"];
    }
    
    return [NSArray array];
}

@end
