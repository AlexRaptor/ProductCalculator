//
//  Order.h
//  ProductCalculator
//
//  Created by Александр Селиванов on 04/04/2019.
//  Copyright © 2019 Alexander Selivanov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Order : NSObject

@property (nonatomic, strong) NSString *product;
@property (nonatomic, assign) NSInteger count;

@end

NS_ASSUME_NONNULL_END
