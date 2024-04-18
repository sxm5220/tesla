import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../utils/sy_multi_language.dart';

class SyToast {
  static void initLoading() {
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.fadingCircle //loading动画效果
      ..loadingStyle = EasyLoadingStyle.dark //颜色
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..progressColor = Colors.yellow
      ..backgroundColor = Colors.green
      ..indicatorColor = Colors.yellow
      ..textColor = Colors.yellow
      ..maskColor = Colors.blue.withOpacity(0.5) //遮罩颜色
      ..userInteractions = true
      ..dismissOnTap = false
      ..toastPosition = EasyLoadingToastPosition.center //位置
      ..customAnimation = CustomAnimation();
  }

  static void loading({String? status}) {
    EasyLoading.instance.indicatorType = EasyLoadingIndicatorType.circle;
    EasyLoading.show(
      status: status ?? SyMultiLanguage.multiLanguage().sy_loading,
      maskType: EasyLoadingMaskType.black,
      dismissOnTap: true,
    );
  }

  static void cancelToast() {
    EasyLoading.dismiss();
  }

  ///提示消息
  static void show(String message,
      {Duration? duration,
      EasyLoadingToastPosition? toastPosition,
      EasyLoadingMaskType? maskType,
      bool? dismissOnTap}) {
    EasyLoading.showToast(
      message,
      duration: duration ?? const Duration(seconds: 1),
      toastPosition: toastPosition ?? EasyLoadingToastPosition.center,
      maskType: maskType ?? EasyLoadingMaskType.black,
      dismissOnTap: dismissOnTap ?? true,
    );
  }

  ///显示环形进度条
  static void showProgress(double value) {
    EasyLoading.showProgress(value,
        status: '${(value * 100).toStringAsFixed(0)}%',
        maskType: EasyLoadingMaskType.black);
  }
}

class CustomAnimation extends EasyLoadingAnimation {
  CustomAnimation();

  @override
  Widget buildWidget(
    Widget child,
    AnimationController controller,
    AlignmentGeometry alignment,
  ) {
    return Opacity(
      opacity: controller.value,
      child: RotationTransition(
        turns: controller,
        child: child,
      ),
    );
  }
}
