//
//  ViewController.m
//  HiLufei
//
//  Created by apple on 15/3/22.
//  Copyright (c) 2015年 iOSlearning. All rights reserved.
//

#import "ViewController.h"
#import "ImageViewController.h"
#import "ImageAndQuotesStore.h"
#import <ShareSDK/ShareSDK.h>
#import "WeiboSDK.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize pageViewController,monthLabel,imageDictionary,quotesDictionary;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ImageAndQuotesStore *data = [[ImageAndQuotesStore alloc]init];
    imageDictionary = data.imageDictionary;
    quotesDictionary = data.quotesDictionary;
    
    NSDate *date = [NSDate date];
    
    ContentViewController *controller = [[ContentViewController alloc]init];
    controller.specialDay = date;
    NSArray *controllers = [[NSArray alloc]initWithObjects:controller, nil];
    //利用controller的speialdat来为viewController传值
    _date = controller.specialDay;
    NSDateFormatter *monthFormatter = [[NSDateFormatter alloc]init];
    monthFormatter.locale = [[NSLocale alloc]initWithLocaleIdentifier:@"en_US"];
    [monthFormatter setDateFormat:@"MMM"];
    
    NSString *thisMonth = [monthFormatter stringFromDate:_date];
    
    monthLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 92, 320, 54)];
    UIFont *font = [UIFont fontWithName:@"Times New Roman" size:50.0];
    [monthLabel setTextAlignment:NSTextAlignmentCenter];
    [monthLabel setFont:font];
    [monthLabel setTextColor:[UIColor redColor]];
    
    monthLabel.text = thisMonth;
    
    
    pageViewController = [[UIPageViewController alloc]initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];//最后一个option是什么作用呢?
    [pageViewController setDataSource:self];
    //备注:controller本身是没有frame属性的.
    [pageViewController.view setFrame:self.view.bounds];
    [self addChildViewController:pageViewController];
    [self.view addSubview:pageViewController.view];
    [pageViewController.view addSubview:monthLabel];
    //pageViewController的首页
    
    
    
    [pageViewController setViewControllers:controllers direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
    //设置根date等于ContentController的date
    date = controller.specialDay;
    
    //增加点击事件
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(openDetailController:)];
    [self.view addGestureRecognizer:tap];
    
    //增加骷髅按钮
    UIButton *bottomButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [bottomButton setFrame:CGRectMake(143.5, 434.5, 33, 33)];
    [bottomButton setBackgroundImage:[UIImage imageNamed:@"logo.png"] forState:UIControlStateNormal];
    [bottomButton addTarget:self action:@selector(detailButton:) forControlEvents:UIControlEventTouchUpInside];
    [pageViewController.view addSubview:bottomButton];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(ContentViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController{
    ContentViewController *controller = (ContentViewController *)viewController;
    
    NSDate *date = [NSDate date];
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    int unit = NSCalendarUnitDay|NSCalendarUnitMonth|NSCalendarUnitYear;
    NSDateComponents *nowComps = [calendar components:unit fromDate:date];
    NSDate *Today = [calendar dateFromComponents:nowComps];
    
    //返回controller.specialDay的日历
    NSDateComponents *controllerComps = [calendar components:unit fromDate:controller.specialDay];
    NSDate *controllerDate = [calendar dateFromComponents:controllerComps];
    //如果等于今天就向后翻,如果不等于今天就可以向后翻
    if([Today isEqualToDate:controllerDate]){
        return nil;
    }
    
    ContentViewController *newController = [[ContentViewController alloc]init];
    newController.specialDay = [NSDate dateWithTimeInterval:24*60*60 sinceDate:controller.specialDay];
    _date = newController.specialDay;
    
    
    return newController;
}

-(ContentViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController{
    ContentViewController *controller = (ContentViewController *)viewController;
    ContentViewController *newController = [[ContentViewController alloc]init];
    newController.specialDay = [NSDate dateWithTimeInterval:-24*60*60 sinceDate:controller.specialDay];
    _date = newController.specialDay;
    
    NSDateFormatter *monthFormatter = [[NSDateFormatter alloc]init];
    monthFormatter.locale = [[NSLocale alloc]initWithLocaleIdentifier:@"en_US"];
    [monthFormatter setDateFormat:@"MMM"];
    
    NSString *thisMonth = [monthFormatter stringFromDate:_date];
    monthLabel.text = thisMonth;
    
    
    return newController;
}


-(void)openDetailController:(id)sender{
    [UIView animateWithDuration:0.35 animations:^{
        self.view.transform = CGAffineTransformScale(self.view.transform, 2.0,2.0);
        self.view.alpha = 0;//alpha值指透明度的意思
    }completion:^(BOOL finished){
        if(finished){
            self.view.transform = CGAffineTransformScale(self.view.transform, 0.5, 0.5);//You are genius!
        }
    }];
    NSDateFormatter *newFormatter = [[NSDateFormatter alloc]init];
    [newFormatter setDateFormat:@"YYYY-MMM-dd"];
    NSString *keyForImage = [newFormatter stringFromDate:_date];
    NSString *keyForQuote = [newFormatter stringFromDate:_date];
    NSLog(@"keyForImage:%@",keyForImage);
    
    UIImage *image = [imageDictionary objectForKey:keyForImage];
    NSString *quote = [quotesDictionary objectForKey:keyForQuote];
    NSLog(@"quote:%@",quote);
    
    ImageViewController *controller = [[ImageViewController alloc]init];
    
    controller.imageView.image = image;
    controller.quoteLabel.text = quote;
    controller.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:controller animated:YES completion:nil];
}


- (IBAction)Login:(id)sender {
    [ShareSDK getUserInfoWithType:ShareTypeSinaWeibo authOptions:nil result:^(BOOL result,id<ISSPlatformUser> userInfo, id<ICMErrorInfo> error){
        if(result){
            NSLog(@"登录成功");
            //成功登录后的后续操作
        }
    }];
}
@end
