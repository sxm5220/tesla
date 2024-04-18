import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SyBottomBarIconWidget extends StatelessWidget {
  final AssetImage image;
  bool isActive;
  final double imageSize;

  // void Function()? onPressed;

  SyBottomBarIconWidget({
    super.key,
    required this.image,
    required this.isActive,
    required this.imageSize,
    // required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: CupertinoButton(
        onPressed: null,
        child: Align(
          alignment: Alignment.center,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(65.w),
              boxShadow: [
                BoxShadow(
                  blurRadius: 40.r,
                  color: isActive ? Colors.blue : Colors.transparent,
                )
              ],
            ),
            child: Image(
              color: isActive ? Colors.blueAccent : Colors.grey,
              image: image,
              width: imageSize,
              height: imageSize,
            ),
          ),
        ),
      ),
    );
  }
}
