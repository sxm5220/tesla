import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tesla/widgets/sy_text_widget.dart';

///图标+文字
class DnsysIconAndTextWidget extends StatelessWidget {
  final bool isRow;
  final IconData icon;
  final String text;
  final double? fontSize;
  final Color? textColor;
  final Color iconColor;
  final double? iconSize;
  const DnsysIconAndTextWidget(
      {Key? key,
      required this.isRow,
      required this.icon,
      required this.text,
      this.textColor,
      required this.iconColor,
      this.fontSize,
      this.iconSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isRow
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: iconColor,
                size: iconSize ?? 34.sp,
              ),
              SizedBox(width: 10.w),
              SyTextWidget(
                text: text,
                color: textColor,
                fontSize: fontSize ?? 24.sp,
                fontWeight: FontWeight.bold,
              ),
            ],
          )
        : Column(
            children: [
              Icon(
                icon,
                color: iconColor,
                size: iconSize ?? 34.sp,
              ),
              SizedBox(
                height: 10.w * 2,
              ),
              SyTextWidget(
                text: text,
                color: textColor,
                fontSize: fontSize ?? 24.sp,
                fontWeight: FontWeight.bold,
              )
            ],
          );
  }
}
