//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by Leandro Pessini on 3/18/15.
//  Copyright (c) 2015 Brazuca Labs. All rights reserved.
//

#import "TopViewController.h"
#import "CustomCollectionViewCell.h"

@interface TopViewController ()<UICollectionViewDataSource, UICollectionViewDelegate>

@end

@implementation TopViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

#pragma mark -UICollectionViewCellDataSource
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.gridImageView.image = self.photosArray[indexPath.row];
    return cell;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.photosArray.count;
}


#pragma mark -IBAction
-(IBAction)onTopRevealButtonTapped
{
    [self.delegate topRevealButtonTapped];
}

@end
