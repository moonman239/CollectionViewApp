//
//  ViewController.m
//  CollectionViewApp
//
//  Created by Montana Burr on 8/15/15.
//  Copyright (c) 2015 Montana. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [(CustomLayout *)[[self collectionView] collectionViewLayout] setDelegate:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 2;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if (section == 0) {
        return 2;
    }
    else
    {
        return 1;
    }
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    // Create a label that displays the cell's index path.
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(29, 0, 100, 100)];
    NSString *labelText = [NSString stringWithFormat:@"%ld,%ld",(long)indexPath.section,(long)indexPath.item];
    [label setText:labelText];
    [cell addSubview:label];
    return cell;
}

-(NSArray *)usableViews
{
    return [self collectionViewViews];
}
@end
