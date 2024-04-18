import 'package:flutter/cupertino.dart';
import 'package:tesla/utils/sy_app_theme.dart';

class SyGlobal {
  static bool isConnectivityResult = false; //监听网络状态（wifi、mobile、none）
  // static bool isReceiveTcpServerStream = false; //是否接收数据
  static String devicePlatformInfo = ''; //设备唯一标识

  static bool get currentIsDark => AppTheme.brightness == Brightness.dark;

  static String currentLanguage = 'en'; //当前语言环境 默认en

  //全局GlobalKey
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static const int xlg = 900;
  static const int lg = 860;
  static const int md = 635;
  static const int sm = 500;
  static const int floatingButton = 50;
}
