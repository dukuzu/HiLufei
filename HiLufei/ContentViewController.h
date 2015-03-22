//
//  ContentViewController.h
//  Playing-higherExercise
//
//  Created by apple on 15/3/18.
//  Copyright (c) 2015年 iOSlearning. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContentViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *monthLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property(nonatomic,strong)NSString *month;
@property(nonatomic,strong)NSString *date;

//新方法
@property(nonatomic,strong)NSDate *specialDay;

@property(nonatomic)NSUInteger index;

@end
