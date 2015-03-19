//
//  TopViewController.h
//  LionsAndTigers
//
//  Created by Leandro Pessini on 3/18/15.
//  Copyright (c) 2015 Brazuca Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TopDelegate <NSObject>

-(void)topRevealButtonTapped;

@end

@interface TopViewController : UIViewController

@property (nonatomic, assign) id<TopDelegate> delegate;

@property NSMutableArray *photosArray;
@property (weak, nonatomic) IBOutlet UICollectionView *imagesColletionView;

@end
