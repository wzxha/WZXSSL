//
//  ViewController.m
//  WZXSSLTool
//
//  Created by wordoor－z on 16/3/28.
//  Copyright © 2016年 wzx. All rights reserved.
//

#import "ViewController.h"
#import "NSString+WZXSSLTool.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString * str = @"wzx";
    NSLog(@"32MD5:%@",[str do32MD5]);
    NSLog(@"16MD5:%@",[str do16MD5]);
    NSLog(@"Twice32MD5:%@",[[str do32MD5] do32MD5]);
    NSLog(@"Twice16MD5:%@",[[str do16MD5] do16MD5]);
    NSLog(@"Sha1:%@",[str doSha1]);
    NSLog(@"Base64:%@",[str doBase64]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
