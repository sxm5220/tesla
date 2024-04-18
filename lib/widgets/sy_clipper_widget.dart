import 'package:flutter/cupertino.dart';

class SyClipperWidget extends CustomClipper<Path> {
  @override
  Path getClip(Size size) => shapePath(size);

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

Path shapePath(Size size) {
  Path path_0 = Path();
  path_0.moveTo(0, size.height * 0.4515833);
  path_0.cubicTo(
      0,
      size.height * 0.4086077,
      size.width * 0.003320077,
      size.height * 0.3672936,
      size.width * 0.009267051,
      size.height * 0.3362654);
  path_0.lineTo(size.width * 0.04192103, size.height * 0.1658974);
  path_0.cubicTo(size.width * 0.06223282, size.height * 0.05992192,
      size.width * 0.09031718, 0, size.width * 0.1196736, 0);
  path_0.lineTo(size.width * 0.3187897, 0);
  path_0.cubicTo(
      size.width * 0.3407769,
      0,
      size.width * 0.3622385,
      size.height * 0.03365282,
      size.width * 0.3802897,
      size.height * 0.09643564);
  path_0.lineTo(size.width * 0.4341077, size.height * 0.2836308);
  path_0.cubicTo(
      size.width * 0.4737154,
      size.height * 0.4213962,
      size.width * 0.5262846,
      size.height * 0.4213962,
      size.width * 0.5658923,
      size.height * 0.2836308);
  path_0.lineTo(size.width * 0.6197103, size.height * 0.09643564);
  path_0.cubicTo(size.width * 0.6377615, size.height * 0.03365269,
      size.width * 0.6592231, 0, size.width * 0.6812103, 0);
  path_0.lineTo(size.width * 0.8803256, 0);
  path_0.cubicTo(
      size.width * 0.9096821,
      0,
      size.width * 0.9377667,
      size.height * 0.05992192,
      size.width * 0.9580795,
      size.height * 0.1658974);
  path_0.lineTo(size.width * 0.9907333, size.height * 0.3362654);
  path_0.cubicTo(size.width * 0.9966795, size.height * 0.3672936, size.width,
      size.height * 0.4086077, size.width, size.height * 0.4515833);
  path_0.lineTo(size.width, size.height);
  path_0.lineTo(0, size.height);
  path_0.lineTo(0, size.height * 0.4515833);
  path_0.close();

  return path_0;
}
