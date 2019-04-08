//
//  IDataExtractor.h
//  ProductCalculator
//
//  Created by Александр Селиванов on 04/04/2019.
//  Copyright © 2019 Alexander Selivanov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol IDataExtractor <NSObject>

- (NSArray<NSString *> *)dataWithContentsOfFile:(NSString *)filePath;

@end

NS_ASSUME_NONNULL_END
