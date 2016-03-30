# WZXSSL
[![License](https://img.shields.io/packagist/l/doctrine/orm.svg)](https://github.com/Wzxhaha/WZXSSL/blob/master/LICENSE)
<div>
</div>
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
<div>
</div>
输出:
```
2016-03-30 16:03:53.523 WZXSSLTool[74550:707925] 32MD5:ece44bfb7451c6c1abd33fabed0cc93d
2016-03-30 16:03:53.523 WZXSSLTool[74550:707925] 16MD5:7451c6c1abd33fab
2016-03-30 16:03:53.524 WZXSSLTool[74550:707925] Twice32MD5:a02ac2f5a1a6f15eed29ccf9268a1599
2016-03-30 16:03:53.524 WZXSSLTool[74550:707925] Twice16MD5:f525548c58ee7420
2016-03-30 16:03:53.524 WZXSSLTool[74550:707925] Sha1:801de8dea9c626136f4c64036aa30fc59b842880
2016-03-30 16:03:53.524 WZXSSLTool[74550:707925] Base64:d3p4
```
