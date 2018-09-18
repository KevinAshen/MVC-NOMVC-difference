//
//  ViewController.h
//  MVCsampleWithMVC
//
//  Created by mac on 2018/9/18.
//  Copyright © 2018年 姜凯文. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VView.h"

#import "MModel.h"

@interface ViewController : UIViewController


@property (nonatomic, strong) VView *aView;  //实例化一个VView的对象

@property (nonatomic, strong) MModel *mModel;  //实例化一个MModel的对象，以便于调用MModel中的方法  


@end

