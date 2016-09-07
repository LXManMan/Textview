//
//  LimitTextView.m
//  Textview
//
//  Created by chuanglong02 on 16/8/5.
//  Copyright © 2016年 chuanglong02. All rights reserved.
//

#import "LimitTextView.h"

@implementation LimitTextView

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UIView *bgView= [[UIView alloc]initWithFrame:self.bounds];
        [self addSubview:bgView];
        //先创建个方便多行输入的textView
        self.textView =[ [UITextView alloc]initWithFrame:CGRectMake(5,50,300,170)];
        self.textView.delegate = self;
        self.textView.layer.borderWidth = 1.0;//边宽
        self.textView.layer.cornerRadius = 5.0;//设置圆角
        self.textView.layer.borderColor = [[UIColor grayColor]colorWithAlphaComponent:0.5].CGColor;
        
        //再创建个可以放置默认字的lable
        self.placeHolderLabel = [[UILabel alloc]initWithFrame:CGRectMake(5,-15,290,60)];
        self.placeHolderLabel.numberOfLines = 0;
        self.placeHolderLabel.text = @"请输入你的意见最多140字";
        self.placeHolderLabel.backgroundColor =[UIColor clearColor];
        
        //多余的一步不需要的可以不写  计算textview的输入字数
        self.residueLabel = [[UILabel alloc]initWithFrame:CGRectMake(240, 140, 60, 20)];
        self.residueLabel.backgroundColor =[UIColor clearColor];
        self.residueLabel.font = [UIFont fontWithName:@"Arial" size:12.0f];
        self.residueLabel.text =[NSString stringWithFormat:@"%@",@"140/140"];
        self.residueLabel.textColor = [[UIColor grayColor]colorWithAlphaComponent:0.5];
        
        //最后添加上即可
        [bgView addSubview :self.textView];
        [self.textView addSubview:self.placeHolderLabel];
        [self.textView addSubview:self.residueLabel];
    }
    return self;
}
-(void)textViewDidChange:(UITextView*)textView

{
    
    if([textView.text length] == 0){
        
        self.placeHolderLabel.text = @"请输入你的意见最多140字";
        
    }else{
        
        self.placeHolderLabel.text = @"";//这里给空
        
    }
    
    //计算剩余字数   不需要的也可不写
    
    NSString *nsTextCotent = textView.text;
    
    int existTextNum = (int)[nsTextCotent length];
    
    int remainTextNum = 140 - existTextNum;
    
    self.residueLabel.text = [NSString stringWithFormat:@"%d/140",remainTextNum];
    
}

-(BOOL)textView:(UITextView*)textView shouldChangeTextInRange:(NSRange)range

replacementText:(NSString*)text

{
   
    
    if ([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return YES;
    }else
    {
        if (range.location >=140) {
            return  NO;
        }else
        {
            return YES;
        }
    }
}
@end
