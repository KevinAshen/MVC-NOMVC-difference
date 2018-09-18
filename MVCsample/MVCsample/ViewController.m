//
//  ViewController.m
//  MVCsample
//
//  Created by mac on 2018/9/17.
//  Copyright © 2018年 姜凯文. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _saveBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [_saveBtn setFrame:CGRectMake(50, 50, 150, 80)];
    
    [_saveBtn setTitle:@"保存" forState:UIControlStateNormal];
    
    [_saveBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];  //默认的页面背景色是白色，butotn上的文字的默认颜色也是白色，所以在此处将button上的文字颜色设置为黑色，以便显示
    
    
    [_saveBtn addTarget:self action:@selector(saveBtnPressed:) forControlEvents:UIControlEventTouchUpInside];  //添加target-action模式
    
    [self.view addSubview:_saveBtn];
    
    
    _loadBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [_loadBtn setFrame:CGRectMake(50, 160, 150, 80)];
    
    [_loadBtn setTitle:@"加载" forState:UIControlStateNormal];
    
    [_loadBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [_loadBtn addTarget:self action:@selector(loadBtnPressed:) forControlEvents:UIControlEventTouchUpInside];  //添加target-action模式
    
    [self.view addSubview:_loadBtn];

}

- (void)saveBtnPressed : (UIButton*)sender{
    
    NSLog(@"保存");
    
    NSLog(@"当前设备的型号：%@", [[UIDevice currentDevice]systemVersion]);
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"恭喜"
                                                                             message:@"保存成功"
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        
        NSLog(@"点击了取消按钮");
        
    }];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
        NSLog(@"点击了确定按钮");
        
    }];
    
    [alertController addAction:cancelAction];
    [alertController addAction:okAction];
    
    [self presentViewController:alertController animated:YES completion:nil];
    
    
    
}

- (void)loadBtnPressed : (UIButton*)sender{
    
    NSLog(@"加载");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
