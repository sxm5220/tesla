import 'package:flutter/cupertino.dart';

import '../generated/l10n.dart';

///多语言
class SyMultiLanguage {
  ///多语言（简体中文、英语）
  static S multiLanguage({BuildContext? context}) {
    return context == null ? S.current : S.of(context);
  }
}
