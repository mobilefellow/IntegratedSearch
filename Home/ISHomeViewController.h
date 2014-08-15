//
//  ViewController.h
//  testCollection
//
//  Created by Xiang Wang on 14-8-11.
//  Copyright (c) 2014年 wx. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ISHomeString;

@interface ISHomeViewController : UIViewController<UICollectionViewDataSource, UICollectionViewDelegate>
{
    ISHomeString *homeString;
    NSMutableArray *functionsArr;
}
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UICollectionView *myCollectionView;

@end
