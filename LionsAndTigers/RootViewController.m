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
#import "CustomCollectionViewCell.h"


@interface RootViewController () <TopDelegate, HUDDelegate>

@property (weak, nonatomic) IBOutlet UIView *topContainer;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftConstraintTopContainer;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *rightConstraintTopContainer;

@property TopViewController *topViewController;
@property HUDViewController *hudViewController;

@property (nonatomic, weak) NSMutableArray *tigersArray;
@property (nonatomic, weak) NSMutableArray *lionsArray;


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
    self.lionsArray = [NSMutableArray arrayWithObjects:
                        [UIImage imageNamed:@"lionOne"],
                        [UIImage imageNamed:@"lionTwo"],
                        [UIImage imageNamed:@"lionThree"], nil];

    self.topViewController.photosArray = self.lionsArray;
    [self.topViewController.imagesColletionView reloadData];
    [self topRevealButtonTapped];

}

-(void)tigersButtonTapped
{
    self.tigersArray = [NSMutableArray arrayWithObjects:
                        [UIImage imageNamed:@"tigerOne"],
                        [UIImage imageNamed:@"tigerTwo"],
                        [UIImage imageNamed:@"tigerThree"], nil];

    self.topViewController.photosArray = self.tigersArray;
    [self.topViewController.imagesColletionView reloadData];
    [self topRevealButtonTapped];

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
