//
//  NSString+WZXSSLTool.m
//  WZXSSLTool
//
//  Created by wordoor－z on 16/3/28.
//  Copyright © 2016年 wzx. All rights reserved.
//

#import "NSString+WZXSSLTool.h"

#import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonCryptor.h>  

@implementation NSString (WZXSSLTool)

- (NSString *)do32MD5
{
    const char *cStr = [self UTF8String];
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5( cStr, (unsigned int)self.length, digest );
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
        [result appendFormat:@"%02x", digest[i]];
    return result;
}

- (NSString *)do16MD5
{
    NSString *md5_32Bit_String=[self do32MD5];
    return [[md5_32Bit_String substringToIndex:24] substringFromIndex:8];
}

- (NSString *)doSha1
{
    const char *cstr = [self cStringUsingEncoding:NSUTF8StringEncoding];
    NSData *data = [NSData dataWithBytes:cstr length:self.length];
    
    uint8_t digest[CC_SHA1_DIGEST_LENGTH];
    
    CC_SHA1(data.bytes,(unsigned int)data.length, digest);
    
    NSMutableString* output = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
    
    for(int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++)
        [output appendFormat:@"%02x", digest[i]];
    
    return output;
}

- (NSString *)doBase64
{
    NSData * data = [self
                      dataUsingEncoding:NSUTF8StringEncoding];
    
    NSString * base64Encoded = [data base64EncodedStringWithOptions:0];
    
    return base64Encoded;
}

- (NSString *)decodeBase64
{
    NSData *nsdataFromBase64String = [[NSData alloc]
                                      initWithBase64EncodedString:self options:0];
    
    NSString *base64Decoded = [[NSString alloc]
                               initWithData:nsdataFromBase64String encoding:NSUTF8StringEncoding];
    return base64Decoded;
}
@end
