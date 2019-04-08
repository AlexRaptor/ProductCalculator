//
//  Order.m
//  ProductCalculator
//
//  Created by Александр Селиванов on 04/04/2019.
//  Copyright © 2019 Alexander Selivanov. All rights reserved.
//

#import "Order.h"

@implementation Order

-(NSString *)description {
    return [NSString stringWithFormat:@"{%@: %ld}", self.product, self.count];
}

@end
