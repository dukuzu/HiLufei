//
//  ImageAndQuotesStore.h
//  Playing-higherExercise
//
//  Created by apple on 15/3/20.
//  Copyright (c) 2015年 iOSlearning. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface ImageAndQuotesStore : NSObject
@property(nonatomic,strong)NSMutableDictionary *imageDictionary;
@property(nonatomic,strong)NSMutableDictionary *quotesDictionary;
@end
