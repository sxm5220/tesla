import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
// import 'package:tesla/pages/chatGPT/sy_chatpgt_provider.dart';
import 'package:tesla/route/sy_route.dart';
import 'package:tesla/utils/sy_app_theme.dart';
import 'package:tesla/utils/sy_globl.dart';
import 'package:tesla/utils/sy_multi_language.dart';
import 'package:tesla/utils/sy_public_util.dart';

import 'constans/app_initialize.dart';
import 'constans/assets_path.dart';
import 'generated/l10n.dart';

void main() async {
  await AppInitialize.initialize();
  /*runApp(
    ChangeNotifierProvider(
      create: (_) => ConversationProvider(),
      child: const MyApp(),
    ),
  );*/
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ///toast、loading
    final easyLoading = EasyLoading.init();
    //设置尺寸（填写设计中设备的屏幕尺寸）如果设计基于750dp * 1334dp的屏幕
    return ScreenUtilInit(
        designSize: const Size(750, 1334),
        // minTextAdapt: true, //是否根据宽度和高度的最小值调整文本
        // splitScreenMode: true, //支持分屏
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: true, // 关闭 debug 标签
            supportedLocales: S.delegate.supportedLocales, //多语言国际化 支持语系
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate, //Material 组件的翻译回调
              GlobalWidgetsLocalizations.delegate, //普通 Widget 的翻译回调
              GlobalCupertinoLocalizations.delegate, //Cupertino 组件的翻译回调
              S.delegate, //应用程序的翻译回调
            ],
            localeResolutionCallback: (locale, supportedLocales) {
              syPrint('当前语言环境：${locale?.languageCode}');
              SyGlobal.currentLanguage = locale?.languageCode ?? 'en';
              if (locale?.languageCode == 'zh') {
                return const Locale('zh', 'CN');
              } else {
                return const Locale('en', 'US');
              }
            },
            //title国际化回调
            onGenerateTitle: (context) {
              return SyMultiLanguage.multiLanguage(context: context)
                  .sy_app_name;
            },
            builder: (context, child) {
              //builder绑定多个
              child = easyLoading(context, child);
              child = MediaQuery(
                //设置文字大小不随系统设置改变
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: child,
              );
              return child;
            },
            //主题样式
            theme: AppTheme.basic(fontFamily: AppTextStyles.fontFamily),
            navigatorObservers: [routeObserver],
            initialRoute: SyRoute.main, //开屏图app
            getPages: SyRoute.routes,
            navigatorKey: SyGlobal
                .navigatorKey, //全局获取 BuildContext  DnsysGlobal.navigatorKey.currentState!.context
            // home: const SyMainPage(),
          );
        });
  }
}
