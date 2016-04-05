//
//  ViewController.m
//  HDeviceIdentifier
//
//  Created by hext on 16/4/5.
//  Copyright © 2016年 hext. All rights reserved.
//

#import "ViewController.h"
#import "HDeviceIdentifier.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //获取唯一设备标识
    NSString *deviceIdentifier = [HDeviceIdentifier deviceIdentifier];
    NSLog(@"唯一设备标识:%@",deviceIdentifier);
    
    //判断应用是第一次在这台手机上安装
    BOOL isFirstInstall = [HDeviceIdentifier isFirstInstall];
    if (isFirstInstall) {
        NSLog(@"本应用是第一次在这台手机上安装");
    }else{
        NSLog(@"本应用不是第一次在这台手机上安装");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
