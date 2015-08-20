//
//  CustomLayout.h
//  CollectionViewApp
//
//  Created by Montana Burr on 8/15/15.
//  Copyright (c) 2015 Montana. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomLayoutDelegate <NSObject>

@required
-(NSArray *)usableViews;

@end

@interface CustomLayout : UICollectionViewLayout
@property (strong,nonatomic) UIViewController<CustomLayoutDelegate>* delegate;
@end
