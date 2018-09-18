//
//  VView.h
//  MVCsampleWithMVC
//
//  Created by mac on 2018/9/18.
//  Copyright © 2018年 姜凯文. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VView : UIView

@property (nonatomic, strong) UIButton *saveBtn;  //点击该按钮，保存数据

@property (nonatomic, strong) UIButton *loadBtn;  //点击该按钮，加载数据

- (void)viewInit;  //添加一个方法，用于初始化控件  

@end
