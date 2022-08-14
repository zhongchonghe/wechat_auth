import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wechat_auth/wechat_auth_method_channel.dart';

void main() {
  MethodChannelWechatAuth platform = MethodChannelWechatAuth();
  const MethodChannel channel = MethodChannel('wechat_auth');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
