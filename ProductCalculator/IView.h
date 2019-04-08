//
//  IView.h
//  ProductCalculator
//
//  Created by Александр Селиванов on 04/04/2019.
//  Copyright © 2019 Alexander Selivanov. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UIColor;

NS_ASSUME_NONNULL_BEGIN

@protocol IView <NSObject>

- (void)setBGColor:(UIColor *)color;

@end

NS_ASSUME_NONNULL_END
