//
//  ViewController.h
//  HiLufei
//
//  Created by apple on 15/3/22.
//  Copyright (c) 2015年 iOSlearning. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContentViewController.h"
@interface ViewController : UIViewController<UIPageViewControllerDataSource>


@property(nonatomic,strong)UIPageViewController *pageViewController;
@property(nonatomic,strong)NSDate *date;
@property(nonatomic,strong)UILabel *monthLabel;
@property(nonatomic,weak)ContentViewController *contentViewController;
@property(nonatomic,strong)NSMutableDictionary *imageDictionary;
@property(nonatomic,strong)NSMutableDictionary *quotesDictionary;


- (IBAction)Login:(id)sender;

@end

