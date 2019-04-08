//
//  Presenter.m
//  ProductCalculator
//
//  Created by Александр Селиванов on 04/04/2019.
//  Copyright © 2019 Alexander Selivanov. All rights reserved.
//

#import "Presenter.h"
#import "DataExtractor.h"
#import "DataParser.h"

@interface Presenter ()

@property (nonatomic, strong) id<IDataExtractor> dataExtractor;
@property (nonatomic, strong) id<IDataParser> dataParser;

@end

@implementation Presenter : NSObject

- (instancetype)init {
    
    self = [super init];
    
    if (self != nil) {
        _dataExtractor = [[DataExtractor alloc] init];
        _dataParser = [[DataParser alloc] init];
    }
    
    return self;
}

- (void)triggerCalculateButtonTap {
    
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
    NSString *filePath = [NSBundle.mainBundle pathForResource:@"orders" ofType:@"txt"];
    NSArray<NSString *> *dataArray = [self.dataExtractor dataWithContentsOfFile:filePath];    
    NSDictionary *dataDictionary = [self.dataParser dataWithContentsOfArray:dataArray];
    
    NSLog(@"dataDictionary: %@", dataDictionary);
}

@end
