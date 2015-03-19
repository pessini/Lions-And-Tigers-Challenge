//
//  ViewController.m
//  LionsAndTigers
//
//  Created by Leandro Pessini on 3/18/15.
//  Copyright (c) 2015 Brazuca Labs. All rights reserved.
//

#import "RootViewController.h"
#import "TopViewController.h"
#import "HUDViewController.h"

@interface RootViewController () <TopDelegate, HUDDelegate>

@property (weak, nonatomic) IBOutlet UIView *topContainer;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftConstraintTopContainer;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *rightConstraintTopContainer;

@property TopViewController *topViewController;
@property HUDViewController *hudViewController;



@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.topViewController.delegate = self;
    self.hudViewController.delegate = self;

}

#pragma mark -TopDelegate

-(void)topRevealButtonTapped
{
    [UIView animateWithDuration:.5 animations:^{

        //the margin
        if (self.leftConstraintTopContainer.constant == 0)
        {
            self.leftConstraintTopContainer.constant += 100;
            self.rightConstraintTopContainer.constant -= 100;
        }
        else
        {
            self.leftConstraintTopContainer.constant = 0;
            self.rightConstraintTopContainer.constant = 0;
        }

        [self.view layoutIfNeeded];

    }];
}

#pragma mark -HUDDelegate

-(void)lionsButtonTapped
{

}

-(void)tigersButtonTapped
{

}

#pragma mark -Segue

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{


    if ([segue.identifier isEqualToString:@"ShowMenuSegue"])
    {

        //because our destination controller is embed to navigation controller
        // we need to set the navigation controller
        UINavigationController *topNav = segue.destinationViewController;
        self.topViewController = [topNav.viewControllers objectAtIndex:0];

    }
    else if ([segue.identifier isEqualToString:@"ShowRootSegue"])
    {
        self.hudViewController = segue.destinationViewController;

    }



}

@end
