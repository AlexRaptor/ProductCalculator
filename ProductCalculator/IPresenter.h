//
//  IPresenter.h
//  ProductCalculator
//
//  Created by Александр Селиванов on 04/04/2019.
//  Copyright © 2019 Alexander Selivanov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol IPresenter <NSObject>

- (void)triggerCalculateButtonTap;

@end

NS_ASSUME_NONNULL_END
