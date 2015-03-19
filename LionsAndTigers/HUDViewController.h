//
//  HUDViewController.h
//  LionsAndTigers
//
//  Created by Leandro Pessini on 3/18/15.
//  Copyright (c) 2015 Brazuca Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HUDDelegate <NSObject>

//methods
-(void)tigersButtonTapped;
-(void)lionsButtonTapped;



@end

@interface HUDViewController : UIViewController

@property (nonatomic, assign) id<HUDDelegate> delegate;
@property (weak, nonatomic) IBOutlet UIButton *lionsButton;
@property (weak, nonatomic) IBOutlet UIButton *tigerButton;
@property (weak, nonatomic) IBOutlet UILabel *copyrightLabel;

@end
