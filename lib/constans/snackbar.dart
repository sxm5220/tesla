import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/sy_time_util.dart';
import '../widgets/sy_text_widget.dart';

///防止重复点击2000ms
const int clickTime = 2000;
int lastClickTime = 0;

void snackBar(String title, String message,
    {bool? error = false, Widget? icon}) {
  //防止_clickTime内重复多次
  var dateTimeNowMilli = SyTimeUtil.dateTimeNowMilli();
  if (dateTimeNowMilli - lastClickTime > clickTime) {
    lastClickTime = dateTimeNowMilli;
    Get.snackbar(title, message,
        titleText: SyTextWidget(
          text: title,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
        messageText: SyTextWidget(
          text: message,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        colorText: Colors.white,
        snackPosition: SnackPosition.TOP,
        backgroundColor: error == true ? Colors.redAccent : Colors.lightBlue,
        icon: icon);
  }
}
