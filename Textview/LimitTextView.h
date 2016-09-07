//
//  LimitTextView.h
//  Textview
//
//  Created by chuanglong02 on 16/8/5.
//  Copyright © 2016年 chuanglong02. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LimitTextView : UIView<UITextViewDelegate>
@property(nonatomic,strong)UITextView *textView;
@property(nonatomic,strong)UILabel *placeHolderLabel;
@property(nonatomic,strong)UILabel *residueLabel;// 输入文本时剩余字数
@end
