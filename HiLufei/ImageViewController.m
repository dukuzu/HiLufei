//
//  ImageViewController.m
//  playing-pageController
//
//  Created by apple on 15/3/18.
//  Copyright (c) 2015年 iOSlearning. All rights reserved.
//

#import "ImageViewController.h"

@interface ImageViewController ()

@end

@implementation ImageViewController
@synthesize imageView,quoteLabel,isLike;

- (instancetype)init
{
    self = [super init];
    if (self) {
        imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0,0,320,480)];
        [self.view addSubview:imageView];
        
        quoteLabel = [[UILabel alloc]initWithFrame:CGRectMake(30, 370, 260, 90)];
        [quoteLabel setTextColor:[UIColor whiteColor]];
        quoteLabel.lineBreakMode = NSLineBreakByWordWrapping;
        [quoteLabel setNumberOfLines:3];
        [quoteLabel setTextAlignment:NSTextAlignmentLeft];
        [self.view addSubview:quoteLabel];
        
        
        isLike = [UIButton buttonWithType:UIButtonTypeCustom];
        [isLike setFrame:CGRectMake(143.5, 326, 33, 33)];
        [isLike setBackgroundImage:[UIImage imageNamed:@"unLike.png"] forState:UIControlStateDisabled];
        [isLike setBackgroundImage:[UIImage imageNamed:@"like.png"] forState:UIControlStateNormal];
        [isLike addTarget:self action:@selector(switchIsLike:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:isLike];
        isLike.tag = 0;
        
        

    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //[self.view setBackgroundColor:[UIColor whiteColor]];

}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    UIButton *cancelButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [cancelButton setFrame:CGRectMake(15, 15, 30, 30)];
    [cancelButton setImage:[UIImage imageNamed:@"返回.png"] forState:UIControlStateNormal];
    
    [cancelButton addTarget:self action:@selector(cancelButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:cancelButton];
    
    

    }


-(void)switchIsLike:(id)sender{
    if(isLike.tag == 1){
        [isLike setBackgroundImage:[UIImage imageNamed:@"like.png"] forState:UIControlStateNormal];
        isLike.tag = 0;
    }else{
        [isLike setBackgroundImage:[UIImage imageNamed:@"unLike.png"] forState:UIControlStateNormal];
        isLike.tag = 1;
    }
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)cancelButton:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}



@end
