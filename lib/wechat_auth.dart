import 'package:flutter/services.dart';

class WechatAuth {
  static const MethodChannel _channel = MethodChannel('wechat_auth');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

   Future<String> initSDK(settings) async {
    return await _channel.invokeMethod('initSDK', settings);
  }
}
