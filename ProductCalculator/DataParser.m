//
//  DataParser.m
//  ProductCalculator
//
//  Created by Александр Селиванов on 04/04/2019.
//  Copyright © 2019 Alexander Selivanov. All rights reserved.
//

#import "DataParser.h"
#import "Order.h"

@implementation DataParser

- (nonnull NSDictionary<NSString *, Order *> *)dataWithContentsOfArray:(nonnull NSArray<NSString *> *)array {
    
    __block NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    
    [array enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        NSArray *data = [obj componentsSeparatedByString:@" "];
        
        Order *order = [[Order alloc] init];
        order.person = data[0];
        order.product = data[1];
        
        
    }];
    
    return dictionary;
}

@end
