import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:tesla/utils/sy_app_theme.dart';

import '../widgets/sy_toast_widget.dart';

class AppInitialize {
  static initialize() async {
    //启动图，可以设置启动时间做初始化使用
    // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

    //打开 Debug Painting 调试开关（显示布局线）
    // debugPaintSizeEnabled = false;
    // Logger.level = Level.debug; //logger 代码注释掉开启打印，否则关闭打印

    WidgetsFlutterBinding.ensureInitialized();

    ///应用打开时屏幕强制竖屏显示
    await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    // 获取app信息（app名字、包名称、版本号...）
    // DnsysSystem.appPackageInfoFunc();

    ///状态栏
    AppTheme.systemStatusBar();

    ///加载Loading
    SyToast.initLoading();

    //初始化CanDevice
    // DnsysCanDevice.initCanDevice();

    //初始化dnsys_hive_depend
    // await hiveDepend.init();

    //初始化dnsys_getLazy_depend
    // await getLazyDepend.init();

    //firebase
    // await Firebase.initializeApp(
    //     options: DefaultFirebaseOptions.currentPlatform);
    //微信
    // DnsysWeChatService().initFluwx();
  }
}
