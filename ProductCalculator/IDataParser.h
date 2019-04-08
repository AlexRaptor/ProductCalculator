//
//  IDataParser.h
//  ProductCalculator
//
//  Created by Александр Селиванов on 04/04/2019.
//  Copyright © 2019 Alexander Selivanov. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Order;

NS_ASSUME_NONNULL_BEGIN

@protocol IDataParser <NSObject>

- (NSArray<NSString *, Order *> *)dataWithContentsOfArray:(NSArray<NSString *> *)array;

@end

NS_ASSUME_NONNULL_END
