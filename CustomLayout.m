//
//  CustomLayout.m
//  CollectionViewApp
//
//  Created by Montana Burr on 8/15/15.
//  Copyright (c) 2015 Montana. All rights reserved.
//

#import "CustomLayout.h"

@implementation CustomLayout
@synthesize delegate;

-(void)prepareLayout
{
    NSAssert(delegate != nil,@"Delegate property must be set.");
    NSAssert([delegate usableViews] != nil,@"Delegate must implement usableViews.");
    NSAssert([[delegate usableViews] count] > 0, @"Delegate's usableViews method returns nothing.");
    
}

-(NSArray *)layoutAttributesForElementsInRect:(CGRect)rect
{
    NSMutableArray *attributesObjects = [[NSMutableArray alloc] init];
    for (UIView *view in [delegate usableViews]) {
        NSInteger tag = [view tag];
        UICollectionViewLayoutAttributes *attrObj = [self layoutAttributesForPlaceholderView:[[delegate view] viewWithTag:tag]];
        
        [attributesObjects addObject:attrObj];
    }
    return attributesObjects;
}

-(UICollectionViewLayoutAttributes *)layoutAttributesForPlaceholderView:(UIView *)placeholderView
{
    NSInteger tag = [placeholderView tag];
    UICollectionViewLayoutAttributes *attributesObject = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:[NSIndexPath indexPathForItem:(tag % 10) inSection:(tag / 10)]];
    UICollectionView *collectionView = [self collectionView];
    CGRect convertedFrame = [collectionView convertRect:placeholderView.frame fromView:collectionView.superview];
    [attributesObject setFrame:convertedFrame];
    [placeholderView removeFromSuperview];
    return attributesObject;
}

@end
