//
//  Presenter.m
//  ProductCalculator
//
//  Created by Александр Селиванов on 04/04/2019.
//  Copyright © 2019 Alexander Selivanov. All rights reserved.
//

#import "Presenter.h"
#import "DataExtractor.h"

@interface Presenter ()

@property (nonatomic, strong) id<IDataExtractor> dataExtractor;

@end

@implementation Presenter : NSObject

- (instancetype)init {
    
    self = [super init];
    
    if (self != nil) {
        _dataExtractor = [[DataExtractor alloc] init];
    }
    
    return self;
}

- (void)triggerCalculateButtonTap {
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

@end
