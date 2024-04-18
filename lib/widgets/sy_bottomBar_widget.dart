import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tesla/widgets/sy_text_widget.dart';

class SyBottomBarWidget extends StatelessWidget {
  const SyBottomBarWidget({Key? key}) : super(key: key);
  static double radius = 40.r;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: CustomPaint(
        painter: CustomButtonBorder(),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(radius),
            topLeft: Radius.circular(radius),
          ),
          child: Container(
            height: 200.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(radius),
                topRight: Radius.circular(radius),
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaY: Shadow.convertRadiusToSigma(5),
                sigmaX: Shadow.convertRadiusToSigma(5),
              ),
              child: Container(
                height: 200.w,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(radius),
                    topRight: Radius.circular(radius),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 80.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            CupertinoIcons.power,
                            color: Color(0xff2FB8FF),
                            size: 30,
                          ),
                          CupertinoButton(
                            onPressed: () {},
                            child: GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                CupertinoIcons.back,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: SyTextWidget(
                              text: "20°",
                              color: Colors.white,
                              fontSize: 50.sp,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(
                              CupertinoIcons.right_chevron,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: () {},
                          ),
                          const Icon(
                            CupertinoIcons.airplane,
                            color: Color(0xffEBEBF5),
                            size: 30,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SyTextWidget(
                            text: "On",
                            color: Colors.white,
                            fontSize: 30.sp,
                          ),
                          SyTextWidget(
                            text: "Vent",
                            color: const Color(0xffEBEBF5),
                            fontSize: 30.sp,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButtonBorder extends CustomPainter {
  static double radius = 40.r;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.shader = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        const Color(0xff000000).withOpacity(0),
        Colors.white.withOpacity(0.2)
      ],
    ).createShader(const Rect.fromLTWH(0, 0, 50, 50));

    paint.strokeWidth = 2;
    paint.style = PaintingStyle.stroke;

    canvas.drawDRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height),
        Radius.circular(radius),
      ),
      RRect.fromRectAndRadius(
        Rect.fromLTWH(1, 1, size.width - 1, size.height - 1),
        Radius.circular(radius),
      ),
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return this != oldDelegate;
  }
}
