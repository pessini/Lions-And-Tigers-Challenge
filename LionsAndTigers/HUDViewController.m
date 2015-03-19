//
//  HUDViewController.m
//  LionsAndTigers
//
//  Created by Leandro Pessini on 3/18/15.
//  Copyright (c) 2015 Brazuca Labs. All rights reserved.
//

#import "HUDViewController.h"

@interface HUDViewController ()

@end

@implementation HUDViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.lionsButton.layer.borderColor = [UIColor whiteColor].CGColor;
    self.lionsButton.layer.borderWidth = 2.0;
    self.tigerButton.layer.borderColor = [UIColor whiteColor].CGColor;
    self.tigerButton.layer.borderWidth = 2.0;
//    [self.copyrightLabel sizeToFit];

}

- (IBAction)onLionsButtonTapped:(UIButton *)sender
{
    [self.delegate lionsButtonTapped];
}

- (IBAction)onTigersButtonTapped:(UIButton *)sender
{
    [self.delegate tigersButtonTapped];
}

@end
