# WZXSSL
[![License](https://img.shields.io/packagist/l/doctrine/orm.svg)](https://github.com/Wzxhaha/WZXSSL/blob/master/LICENSE)
字符串快速加密的工具类，目前支持MD5(16、32)、Sha1、base64

#如何使用
`#import "NSString+WZXSSLTool.h"`
```
 NSString * str = @"wzx";
 NSLog(@"32MD5:%@",[str do32MD5]);
 NSLog(@"16MD5:%@",[str do16MD5]);
 NSLog(@"Twice32MD5:%@",[[str do32MD5] do32MD5]);
 NSLog(@"Twice16MD5:%@",[[str do16MD5] do16MD5]);
 NSLog(@"Sha1:%@",[str doSha1]);
 NSLog(@"Base64:%@",[str doBase64]);
```
你可以任意组合进行混合加密。
