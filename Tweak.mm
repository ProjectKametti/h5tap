// 将来のバージョンとの互換性を保つため、JSContext は使用しないでください。

#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>
#import <UIKit/UIKit.h>

#pragma GCC diagnostic ignored "-Wunguarded-availability-new"

// JS関数のインターフェイスを定義する
@protocol h5tapJSExport <JSExport>

JSExportAs(addInt, -(int)addInt:(int)n1 n2:(int)n2);
JSExportAs(addFloat, -(float)addFloat:(float)n1 n2:(float)n2);
JSExportAs(addDouble, -(double)addDouble:(double)n1 n2:(double)n2);
@end

// プラグイン・クラスの定義
@interface h5tap : NSObject <h5tapJSExport>
@end

// プラグイン・インターフェイス関数の実装
@implementation h5tap


-(int)addInt:(int)n1 n2:(int)n2
{
    return n1+n2;
}

-(float)addFloat:(float)n1 n2:(float)n2
{
    return n1+n2;
}

-(double)addDouble:(double)n1 n2:(double)n2
{
    return n1+n2;
}

@end