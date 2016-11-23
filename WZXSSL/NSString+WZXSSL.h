//
//  NSString+WZXSSLTool.h
//  WZXSSLTool
//
//  Created by wordoor－z on 16/3/28.
//  Copyright © 2016年 wzx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (WZXSSL)

- (NSString *)do16MD5;

- (NSString *)do32MD5;

- (NSString *)doSha1;

- (NSString *)doBase64;

- (NSString *)decodeBase64;

- (NSString *)doAES:(NSString *)key;

- (NSString *)decodeAES:(NSString *)key;

- (NSString *)doDES:(NSString *)key;

- (NSString *)decodeDES:(NSString *)key;

@end
