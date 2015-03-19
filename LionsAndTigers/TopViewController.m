//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by Leandro Pessini on 3/18/15.
//  Copyright (c) 2015 Brazuca Labs. All rights reserved.
//

#import "TopViewController.h"

@interface TopViewController ()

@end

@implementation TopViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

-(IBAction)onTopRevealButtonTapped
{
    [self.delegate topRevealButtonTapped];
}

@end
