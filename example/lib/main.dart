import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:wechat_auth/wechat_auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _wechatAuthPlugin = WechatAuth();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _loginQr,
                child: Text("企业微信登录"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _loginQr() async {
    var msg = await _wechatAuthPlugin.initSDK({
      "SCHEMA": "", // 必填，自建应用移动端登录授权 SCHEMA
      "APPID": "", //  必填，企业 appid
      "AGENTID": "" // 必填， 自建应用 agentid
    });
    print(msg);
  }
}
