import 'package:flutter_test/flutter_test.dart';
import 'package:wechat_auth/wechat_auth.dart';
import 'package:wechat_auth/wechat_auth_platform_interface.dart';
import 'package:wechat_auth/wechat_auth_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockWechatAuthPlatform 
    with MockPlatformInterfaceMixin
    implements WechatAuthPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final WechatAuthPlatform initialPlatform = WechatAuthPlatform.instance;

  test('$MethodChannelWechatAuth is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelWechatAuth>());
  });

  test('getPlatformVersion', () async {
    WechatAuth wechatAuthPlugin = WechatAuth();
    MockWechatAuthPlatform fakePlatform = MockWechatAuthPlatform();
    WechatAuthPlatform.instance = fakePlatform;
  
    expect(await wechatAuthPlugin.getPlatformVersion(), '42');
  });
}
