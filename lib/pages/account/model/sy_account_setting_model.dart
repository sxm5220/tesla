import 'package:flutter/cupertino.dart';

class SyAccountSettingModel {
  Function()? onTap;
  IconData? iconDataLeft;
  String? title;
  String? des;
  IconData? iconDataRight;
  SyAccountSettingModel(
      {this.onTap,
      this.iconDataLeft,
      this.title,
      this.des,
      this.iconDataRight});
}
