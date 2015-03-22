//
//  ImageAndQuotesStore.m
//  Playing-higherExercise
//
//  Created by apple on 15/3/20.
//  Copyright (c) 2015年 iOSlearning. All rights reserved.
//

#import "ImageAndQuotesStore.h"

@implementation ImageAndQuotesStore

@synthesize imageDictionary,quotesDictionary;

-(id)init{
    self = [super init];
    if(self){
        
        imageDictionary = [[NSMutableDictionary alloc]init];
        
        UIImage *image = [UIImage imageNamed:@"image1 2@2x.png"];
        NSString *keyForImage = @"2015-3月-02";
        [imageDictionary setObject:image forKey:keyForImage];
        
        image = [UIImage imageNamed:@"image1 3@2x.png"];
        keyForImage = @"2015-3月-03";
        [imageDictionary setObject:image forKey:keyForImage];
        image = [UIImage imageNamed:@"image1 4@2x.png"];
        keyForImage = @"2015-3月-04";
        [imageDictionary setObject:image forKey:keyForImage];
        image = [UIImage imageNamed:@"image1 5@2x.png"];
        keyForImage = @"2015-3月-05";
        [imageDictionary setObject:image forKey:keyForImage];
        image = [UIImage imageNamed:@"image1 6@2x.png"];
        keyForImage = @"2015-3月-06";
        [imageDictionary setObject:image forKey:keyForImage];
        image = [UIImage imageNamed:@"image1 7@2x.png"];
        keyForImage = @"2015-3月-07";
        [imageDictionary setObject:image forKey:keyForImage];
        image = [UIImage imageNamed:@"image1 8@2x.png"];
        keyForImage = @"2015-3月-08";
        [imageDictionary setObject:image forKey:keyForImage];
        image = [UIImage imageNamed:@"image1 9@2x.png"];
        keyForImage = @"2015-3月-09";
        [imageDictionary setObject:image forKey:keyForImage];
        image = [UIImage imageNamed:@"image1 10@2x.png"];
        keyForImage = @"2015-3月-10";
        [imageDictionary setObject:image forKey:keyForImage];
        image = [UIImage imageNamed:@"image1 11@2x.png"];
        keyForImage = @"2015-3月-11";
        [imageDictionary setObject:image forKey:keyForImage];
        image = [UIImage imageNamed:@"image1 12@2x.png"];
        keyForImage = @"2015-3月-12";
        [imageDictionary setObject:image forKey:keyForImage];
        image = [UIImage imageNamed:@"image1 13@2x.png"];
        keyForImage = @"2015-3月-13";
        [imageDictionary setObject:image forKey:keyForImage];
        image = [UIImage imageNamed:@"image1 14@2x.png"];
        keyForImage = @"2015-3月-14";
        [imageDictionary setObject:image forKey:keyForImage];
        image = [UIImage imageNamed:@"image1 15@2x.png"];
        keyForImage = @"2015-3月-15";
        [imageDictionary setObject:image forKey:keyForImage];
        image = [UIImage imageNamed:@"image1 16@2x.png"];
        keyForImage = @"2015-3月-16";
        [imageDictionary setObject:image forKey:keyForImage];
        image = [UIImage imageNamed:@"image1 17@2x.png"];
        keyForImage = @"2015-3月-17";
        [imageDictionary setObject:image forKey:keyForImage];
        image = [UIImage imageNamed:@"image1 18@2x.png"];
        keyForImage = @"2015-3月-18";
        [imageDictionary setObject:image forKey:keyForImage];
        image = [UIImage imageNamed:@"image1 19@2x.png"];
        keyForImage = @"2015-3月-19";
        [imageDictionary setObject:image forKey:keyForImage];
        image = [UIImage imageNamed:@"image1 20@2x.png"];
        keyForImage = @"2015-3月-20";
        [imageDictionary setObject:image forKey:keyForImage];
        image = [UIImage imageNamed:@"image1 21@2x.png"];
        keyForImage = @"2015-3月-21";
        [imageDictionary setObject:image forKey:keyForImage];
        image = [UIImage imageNamed:@"image1 22@2x.png"];
        keyForImage = @"2015-3月-22";
        [imageDictionary setObject:image forKey:keyForImage];
        image = [UIImage imageNamed:@"image1 23@2x.png"];
        keyForImage = @"2015-3月-02";
        [imageDictionary setObject:image forKey:keyForImage];
        image = [UIImage imageNamed:@"image1 24@2x.png"];
        keyForImage = @"2015-3月-24";
        [imageDictionary setObject:image forKey:keyForImage];
        image = [UIImage imageNamed:@"image1 25@2x.png"];
        keyForImage = @"2015-3月-25";
        [imageDictionary setObject:image forKey:keyForImage];
        
        quotesDictionary = [[NSMutableDictionary alloc]init];
        NSString *quote = @"永远不要忘记能够笑的坚强";
        NSString *quoteForKey = @"2015-3月-02";
        [quotesDictionary setObject:quote forKey:quoteForKey];
        
        quote = @"我是要成为海贼王的男人";
        quoteForKey = @"2015-3月-03";
        [quotesDictionary setObject:quote forKey:quoteForKey];
        
        quote = @"这个世界并不是掌握在那些嘲笑者的手中,而恰恰掌握在能够经受得住嘲笑与批评并不断往前走的人手中";
        quoteForKey = @"2015-3月-04";
        [quotesDictionary setObject:quote forKey:quoteForKey];
        
        quote = @"我终于找到救娜美的方法了!只要没有这个房间就好了!任何她不想停留的敌方,我就要把它毁掉";
        quoteForKey = @"2015-3月-05";
        [quotesDictionary setObject:quote forKey:quoteForKey];
        //
        quote = @"";
        quoteForKey = @"2015-3月-06";
        [quotesDictionary setObject:quote forKey:quoteForKey];
        
        quote = @"甜甜甘风";
        quoteForKey = @"2015-3月-07";
        [quotesDictionary setObject:quote forKey:quoteForKey];
        
        quote = @"我决定了要成为海贼王便要为此而战，就算死也不要紧。";
        quoteForKey = @"2015-3月-08";
        [quotesDictionary setObject:quote forKey:quoteForKey];
        
        quote = @"我的运气也很好";
        quoteForKey = @"2015-3月-09";
        [quotesDictionary setObject:quote forKey:quoteForKey];
        
        quote = @"我会以one piece为目标";
        quoteForKey = @"2015-3月-10";
        [quotesDictionary setObject:quote forKey:quoteForKey];
        
        quote = @"我做好了自己的部分了,接下来轮到你了,做不好的话我就揍扁你";
        quoteForKey = @"2015-3月-11";
        [quotesDictionary setObject:quote forKey:quoteForKey];
        
        quote = @"只要把垃圾都藏在黑暗之中,世界看起来自然就歌舞升平了.";
        quoteForKey = @"2015-3月-12";
        [quotesDictionary setObject:quote forKey:quoteForKey];
        
        quote = @"人生充满了起起落落.关键在于,在顶端时好好享受;在低谷时不失勇气";
        quoteForKey = @"2015-3月-13";
        [quotesDictionary setObject:quote forKey:quoteForKey];
        
        quote = @"谁也没有办法把过去发生的事情一笔勾销,要记住教训,勇敢的活下去";
        quoteForKey = @"2015-3月-14";
        [quotesDictionary setObject:quote forKey:quoteForKey];
        
        quote = @"我做不到的由你来,你做不到的由我来.";
        quoteForKey = @"2015-3月-15";
        [quotesDictionary setObject:quote forKey:quoteForKey];
        
        quote = @"以前的事不可能忘掉的,也没必要忘掉,可是更重要的应该是未来的事才对吧";
        quoteForKey = @"2015-3月-16";
        [quotesDictionary setObject:quote forKey:quoteForKey];
        
        quote = @"能原谅女人谎言的才是真正的男人";
        quoteForKey = @"2015-3月-17";
        [quotesDictionary setObject:quote forKey:quoteForKey];
        
        quote = @"医生他想拯救这个国家!!所以,我绝对不能让你们进城堡";
        quoteForKey = @"2015-3月-18";
        [quotesDictionary setObject:quote forKey:quoteForKey];
        
        quote = @"就算你说我是名医,我也不会高兴的!";
        quoteForKey = @"2015-3月-19";
        [quotesDictionary setObject:quote forKey:quoteForKey];
        
        quote = @"历史虽然会一再重演,但人类却无法回到过去.";
        quoteForKey = @"2015-3月-20";
        [quotesDictionary setObject:quote forKey:quoteForKey];
        
        quote = @"我决定了要成为海贼王便要为此而战,就算死也不要紧.";
        quoteForKey = @"2015-3月-21";
        [quotesDictionary setObject:quote forKey:quoteForKey];
        
        quote = @"死并不是唯一的报恩方式,人家并不是要你死才救你的,让人家救回一命,又跑去死,是懦夫才会做的事!";
        quoteForKey = @"2015-3月-22";
        [quotesDictionary setObject:quote forKey:quoteForKey];
        
        quote = @"如果一直想着麻烦的事,只会更麻烦.";
        quoteForKey = @"2015-3月-23";
        [quotesDictionary setObject:quote forKey:quoteForKey];
        
        quote = @"侮辱决斗的人,不是男子汉!";
        quoteForKey = @"2015-3月-24";
        [quotesDictionary setObject:quote forKey:quoteForKey];
        
        quote = @"直到今天我们还做着同样的梦,乘着这个被托付的梦想前进!";
        quoteForKey = @"2015-3月-25";
        [quotesDictionary setObject:quote forKey:quoteForKey];
    }
    return self;
}
@end
