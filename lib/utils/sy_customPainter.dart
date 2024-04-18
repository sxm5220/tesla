import 'dart:ui';

import 'package:flutter/material.dart';

import '../widgets/sy_clipper_widget.dart';

class SyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path_0 = shapePath(size);
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.black.withOpacity(0.50);
    paint0Fill.imageFilter = ImageFilter.blur(
      sigmaX: Shadow.convertRadiusToSigma(40),
      sigmaY: Shadow.convertRadiusToSigma(40),
    );

    // inner shadow
    final shadowPaint1 = Paint()
      ..blendMode = BlendMode.overlay
      ..colorFilter =
          ColorFilter.mode(Colors.white.withOpacity(0.22), BlendMode.overlay)
      ..imageFilter = ImageFilter.blur(
          sigmaX: Shadow.convertRadiusToSigma(3),
          sigmaY: Shadow.convertRadiusToSigma(3));

    canvas.drawPath(path_0.shift(const Offset(0.5, 0.2)), shadowPaint1);
    // blur
    canvas.drawPath(path_0, paint0Fill);

    // inner shadow
    final shadowPaint2 = Paint()
      ..blendMode = BlendMode.overlay
      ..colorFilter = const ColorFilter.mode(Colors.white, BlendMode.overlay)
      ..imageFilter = ImageFilter.blur(
          sigmaX: Shadow.convertRadiusToSigma(21),
          sigmaY: Shadow.convertRadiusToSigma(21));
    canvas.drawPath(path_0.shift(const Offset(-3, -20)), shadowPaint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
