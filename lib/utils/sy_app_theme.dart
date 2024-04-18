import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tesla/utils/sy_globl.dart';

class AppTheme {
  static Brightness get brightness => MediaQueryData.fromView(
          WidgetsBinding.instance.platformDispatcher.views.first)
      .platformBrightness;

  static ThemeData basic({String? fontFamily}) {
    return ThemeData(
      useMaterial3: true,
      //在此处设备highlightColor、splashColor后，BottomNavigationBar 去掉点击水波纹效果
      highlightColor: const Color.fromRGBO(1, 0, 0, 0.0),
      splashColor: const Color.fromRGBO(1, 0, 0, 0.0),
      fontFamily: fontFamily, //GetPlatform.isWeb ? null : Font.poppins, //字体样式,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.transparent,
        // primaryContainer: Colors.cyanAccent,
        brightness: brightness, //根据手机系统（明、暗）
        background: SyGlobal.currentIsDark
            ? Colors.black
            : const Color.fromRGBO(245, 245, 245, 1),
      ),
      appBarTheme: AppBarTheme(
        surfaceTintColor: SyGlobal.currentIsDark ? Colors.black : Colors.white,
        color: SyGlobal.currentIsDark ? Colors.black : Colors.white,
        iconTheme: IconThemeData(
            color: SyGlobal.currentIsDark ? Colors.white : Colors.black),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: SyGlobal.currentIsDark ? Colors.black : Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: IconThemeData(
            size: 45.sp, color: const Color.fromRGBO(92, 146, 229, 1)),
        unselectedIconTheme: IconThemeData(
            size: 40.sp,
            color: SyGlobal.currentIsDark
                ? const Color.fromRGBO(112, 112, 112, 1)
                : Colors.black54),
        selectedLabelStyle: TextStyle(color: Colors.cyan, fontSize: 28.sp),
        unselectedLabelStyle: TextStyle(color: Colors.grey, fontSize: 24.sp),
      ),
      canvasColor: SyGlobal.currentIsDark
          ? const Color(0xff0E1117)
          : const Color.fromRGBO(245, 245, 245, 1), //背景颜色
      cardColor: SyGlobal.currentIsDark
          ? const Color(0xff161b22)
          : const Color.fromRGBO(255, 255, 255, 1), //card颜色
    );
  }

  static FontWeight light = FontWeight.w300;
  static FontWeight regular = FontWeight.w400;
  static FontWeight medium = FontWeight.w500;
  static FontWeight semiBold = FontWeight.w600;
  static FontWeight bold = FontWeight.w700;
  static FontWeight extraBold = FontWeight.w800;
  static FontWeight black = FontWeight.w900;

  static systemStatusBar() {
    /// 顶部状态栏颜色
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    ///顶部状态栏图标的亮度
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light));

    ///仅用于iOS顶部状态栏亮度
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarBrightness: Brightness.light));
  }
}
