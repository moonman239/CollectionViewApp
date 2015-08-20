//
//  ViewController.h
//  CollectionViewApp
//
//  Created by Montana Burr on 8/15/15.
//  Copyright (c) 2015 Montana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomLayout.h"
@interface ViewController : UIViewController <UICollectionViewDataSource,CustomLayoutDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *collectionViewViews;


@end

