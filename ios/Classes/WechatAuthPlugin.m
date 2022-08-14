#import "WechatAuthPlugin.h"
#if __has_include(<wechat_auth/wechat_auth-Swift.h>)
#import <wechat_auth/wechat_auth-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "wechat_auth-Swift.h"
#endif

@implementation WechatAuthPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftWechatAuthPlugin registerWithRegistrar:registrar];
}
@end
