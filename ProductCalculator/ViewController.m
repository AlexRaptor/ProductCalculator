//
//  ViewController.m
//  ProductCalculator
//
//  Created by Александр Селиванов on 04/04/2019.
//  Copyright © 2019 Alexander Selivanov. All rights reserved.
//

#import "ViewController.h"
#import "Presenter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _presenter = [[Presenter alloc] init];
}

- (IBAction)onCalculateButtonTap:(UIButton *)sender {
    [self.presenter triggerCalculateButtonTap];
}

- (void)setBGColor:(UIColor *)color {
    [self.view setBackgroundColor: color];
}

@end
