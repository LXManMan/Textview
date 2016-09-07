//
//  ViewController.m
//  Textview
//
//  Created by chuanglong02 on 16/8/5.
//  Copyright © 2016年 chuanglong02. All rights reserved.
//

#import "ViewController.h"
#define KScreenW [[UIScreen mainScreen]bounds].size.width
#define KScreenH [[UIScreen mainScreen]bounds].size.height
#import "LimitTextView.h"
@interface ViewController ()<UITextViewDelegate>
@property(nonatomic,strong)LimitTextView *textview;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.textview =[[LimitTextView alloc]initWithFrame:CGRectMake(10, 64, KScreenW-20, 400)];
   
    [self.view addSubview:self.textview];
   
    NSString *text = @"w";
    NSString *textTwo = @"哈ha";
    NSLog(@"%ld,%ld",text.length,textTwo.length);
//    self.textview.backgroundColor =[UIColor redColor];
}
//- (float) heightForString:(UITextView *)textView andWidth:(float)width{
//    CGSize sizeToFit = [textView sizeThatFits:CGSizeMake(width, MAXFLOAT)];
//    return sizeToFit.height;
//}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
//    self.textview.text = @"";
//    [self textViewDidChange:self.textview];
    self.textview.textView.text= @"";
}
//-(void)textViewDidChange:(UITextView *)textView
//{
//    CGFloat stringH  = [self heightForString:self.textview andWidth:KScreenW - 20];
//    
//    self.textview.frame = CGRectMake(10, 64, KScreenW - 20, stringH);
//    NSLog(@"%@",NSStringFromCGRect(textView.frame));
//}

@end
