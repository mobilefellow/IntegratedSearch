//
//  ViewController.m
//  testCollection
//
//  Created by Xiang Wang on 14-8-11.
//  Copyright (c) 2014年 wx. All rights reserved.
//

#import "ISHomeViewController.h"
#import "ISHomeCollectionViewCell.h"
#import "ISHomeString.h"
#import "ISHomeFunctionItem.h"
#import "ISTrainViewController.h"
#import "ISExpressViewController.h"

@interface ISHomeViewController ()

@end

@implementation ISHomeViewController

@synthesize searchBar;
@synthesize myCollectionView;

static NSString *cellId = @"cell";

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self initData];
    [self buildView];
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"adasda");
}

#pragma mark - private methods

- (void)initData
{
    homeString = [ISHomeString sharedInstance];
    functionsArr = [[NSMutableArray alloc]initWithObjects:
                    [[ISHomeFunctionItem alloc]initWithItemName:homeString.trainName ImageName:homeString.trainImageName],
                    [[ISHomeFunctionItem alloc]initWithItemName:homeString.expressName ImageName:homeString.expressImageName], nil];
}

- (void)buildView
{
    [myCollectionView registerClass:[ISHomeCollectionViewCell class] forCellWithReuseIdentifier:cellId];
}


#pragma mark UICollectionViewDataSource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return functionsArr.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ISHomeCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellId forIndexPath:indexPath];
    
    ISHomeFunctionItem *item = [functionsArr objectAtIndex:indexPath.row];
    cell.titleLabel.text = item.functionName;
    return cell;
}

#pragma mark UICollectionViewDelegate
- (void)collectionView:(UICollectionView *)collectionView didHighlightItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *functionName = ((ISHomeFunctionItem*)[functionsArr objectAtIndex:indexPath.row]).functionName;
    UIViewController *vc;
    
    if([functionName isEqualToString:homeString.trainName]){
        vc = [[ISTrainViewController alloc]init];
    } else if ([functionName isEqualToString:homeString.expressName]){
        vc = [[self storyboard]instantiateViewControllerWithIdentifier:@"sb_vc_express"];
    }

    vc.title = functionName;
    [self.navigationController pushViewController:vc animated:YES];
//    ISTrainViewController *trainVC = [[ISTrainViewController alloc]init];
//    [self.navigationController pushViewController:vc animated:YES];

}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *functionName = ((ISHomeFunctionItem*)[functionsArr objectAtIndex:indexPath.row]).functionName;
    UIViewController *vc;
    
//    if([functionName isEqualToString:homeString.trainName]){
//        vc = [[ISTrainViewController alloc]init];
//        
//    } else if ([functionName isEqualToString:homeString.expressName]){
//        
//    }
//    
//    vc.title = functionName;
//    [self.navigationController pushViewController:vc animated:YES];
//    ISTrainViewController *trainVC = [[ISTrainViewController alloc]init];
//    [self.navigationController pushViewController:trainVC animated:YES];
}


@end
