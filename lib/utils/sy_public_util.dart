import 'package:flutter/foundation.dart';
import 'package:tesla/utils/sy_multi_language.dart';

import '../widgets/sy_toast_widget.dart';

///打印
void syPrint(String str) {
  if (kDebugMode) {
    debugPrint("👻️👻️👻️ $str");
  }
}

class SyPublicUtil {
  ///大陆手机号11位数，匹配格式：前三位固定格式+后8位任意数
  ///13+任意数 * 15+除4的任意数 * 18+除1和4的任意数 * 17+除9的任意数 * 147
  static bool isChinaPhoneLegal(String str) {
    if (str.isEmpty) return false;
    return RegExp(
            "^((13[0-9])|(15[^4])|(166)|(17[0-8])|(18[0-9])|(19[8-9])|(147,145))\\d{8}\$")
        .hasMatch(str);
  }

  ///邮箱校验
  static bool isEmail(String str) {
    if (str.isEmpty) return false;
    return RegExp("^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*\$")
        .hasMatch(str);
  }

  ///字符串长度
  static bool checkStringLength(String str, int length) {
    if (str.isEmpty) return false;
    return str.length >= length;
  }

  ///将List<int>转换为Uint8List
  static listIntToUint8List(List<int> data) {
    return Uint8List.fromList(data);
  }

  ///文本框验证（手机号）
  static bool phoneVerify(String phone) {
    if (phone.isEmpty) {
      SyToast.show(SyMultiLanguage.multiLanguage().sy_phone_valid_null);
      return false;
      // } else if (!GetUtils.isPhoneNumber(account)) {
    } else if (!SyPublicUtil.isChinaPhoneLegal(phone)) {
      SyToast.show(SyMultiLanguage.multiLanguage().sy_phone_no_valid);
      return false;
    }
    return true;
  }

  ///文本框验证
  static bool editingControllerVerify(String str, String tip) {
    if (str.isEmpty) {
      SyToast.show(tip);
      return false;
    }
    return true;
  }

  ///文本框验证（邮箱）
  static bool emailVerify(String email) {
    if (email.isEmpty) {
      SyToast.show(SyMultiLanguage.multiLanguage().sy_email_valid_null);
      return false;
      // } else if (!GetUtils.isPhoneNumber(account)) {
    } else {
      if (!SyPublicUtil.isEmail(email)) {
        SyToast.show(SyMultiLanguage.multiLanguage().sy_email_no_valid);
        return false;
      }
    }
    return true;
  }

  //缓存大小格式转换
  static String formatSize(double value) {
    List<String> unitArr = ['B', 'K', 'M', 'G'];
    int index = 0;
    while (value > 1024) {
      index++;
      value = value / 1024;
    }
    String size = value.toStringAsFixed(2);
    return size + unitArr[index];
  }
}
