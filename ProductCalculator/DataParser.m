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

- (nonnull NSDictionary<NSString *, NSArray<Order *> *> *)dataWithContentsOfArray:(nonnull NSArray<NSString *> *)array {
    
    __block NSMutableDictionary<NSString *, NSMutableArray<Order *> *> *dictionary = [NSMutableDictionary dictionary];
    
    [array enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        NSArray<NSString *> *data = [obj componentsSeparatedByString:@" "];
        
        if ([data count] == 3) {
            
            NSString *person = data[0];
            NSString *product = data[1];
            NSInteger count = [data[2] integerValue];
            
            NSMutableArray<Order *> *orderArray = dictionary[person];
            
            if (orderArray == nil) {
                orderArray = [NSMutableArray array];
                dictionary[person] = orderArray;
            }
            
            __block BOOL isExistingOrder = NO;
            
            [orderArray enumerateObjectsUsingBlock:^(Order * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                
                if (obj.product == product) {
                
                    obj.count += count;
                    isExistingOrder = YES;
                    *stop = YES;
                }
            }];
            
            if (!isExistingOrder) {
                
                Order *newOrder = [[Order alloc] init];
                newOrder.product = product;
                newOrder.count = count;
                
                [orderArray addObject:newOrder];
            }
            
        }
    }];
    
    return dictionary;
}

@end
