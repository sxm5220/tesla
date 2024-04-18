import 'package:flutter/material.dart';

class SyTextWidget extends StatelessWidget {
  const SyTextWidget({
    super.key,
    required this.text,
    this.color,
    this.backgroundColor,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.fontStyle,
    this.maxLines = 1,
    this.overflow,
  });
  final String text;
  final Color? color, backgroundColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final FontStyle? fontStyle;
  final TextOverflow? overflow;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontStyle: fontStyle,
          fontSize: fontSize,
          color: color,
          backgroundColor: backgroundColor,
          fontWeight: fontWeight),
      textAlign: textAlign,
      softWrap: true,
      overflow: overflow ?? TextOverflow.ellipsis,
      maxLines: maxLines,
    );
  }
}
