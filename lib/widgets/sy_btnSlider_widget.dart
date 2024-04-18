import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SyBtnSliderWidget extends StatelessWidget {
  const SyBtnSliderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 380.w,
        width: 380.w,
        decoration: BoxDecoration(
          color: const Color(0xFF292D31),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              offset: Offset(-50.w, -50.w),
              blurRadius: 120.r,
              color: const Color(0xff3a4145),
            ),
            BoxShadow(
              offset: Offset(20.w, 20.w),
              blurRadius: 40.r,
              color: const Color(0xFF13151A),
            ),
          ],
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff2B2F33),
              Color(0xff101113),
            ],
          ),
        ),
        child: Center(
          child: ClipOval(
            child: Container(
              width: 250.w,
              height: 250.w,
              decoration: BoxDecoration(
                color: const Color(0xFF292D31),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(40.w, 40.w),
                    blurRadius: 80.r,
                    color: const Color(0xFF13151A),
                  ),
                  BoxShadow(
                    offset: Offset(-4.w, -4.w),
                    blurRadius: 20.r,
                    color: const Color(0xff282c2f),
                  ),
                ],
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xff1d1f22),
                    Color(0xff323840),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
