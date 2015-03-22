//
//  ContentViewController.m
//  Playing-higherExercise
//
//  Created by apple on 15/3/18.
//  Copyright (c) 2015年 iOSlearning. All rights reserved.
//

#import "ContentViewController.h"
@interface ContentViewController ()

@end

@implementation ContentViewController
@synthesize month,date,monthLabel,dateLabel,index;

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nil bundle:nil];
    if(self){
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    //[dateFormatter setDateFormat:@"d"];
    [dateFormatter setDateFormat:@"d"];
    NSString *thisDay = [dateFormatter stringFromDate:_specialDay];

    dateLabel.text = thisDay;
    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
