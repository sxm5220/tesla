import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SyAppBarBtnWidget extends StatelessWidget {
  const SyAppBarBtnWidget({super.key, required this.widget, this.onPressed});
  final Widget widget;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: const EdgeInsets.all(1),
      onPressed: onPressed,
      child: Container(
        height: 100.w,
        width: 100.w,
        decoration: BoxDecoration(
          color: const Color(0xFF232527),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              offset: const Offset(3, 3),
              blurRadius: 40.r,
              color: const Color(0xFF13151A),
            ),
            BoxShadow(
              offset: const Offset(-3, -3),
              blurRadius: 40.r,
              color: const Color(0xff5D6167),
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color(0xff5D6167).withOpacity(0.0),
              const Color(0xff13151A).withOpacity(1),
            ],
          ),
        ),
        child: Container(
          height: 90.w,
          width: 90.w,
          decoration: BoxDecoration(
            color: const Color(0xFF232527),
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                const Color(0xff545659).withOpacity(0.0),
                const Color(0xff232629).withOpacity(1),
              ],
            ),
          ),
          child: Container(
            height: 90.w,
            width: 90.w,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.8,
                color: const Color(0xFF232527),
              ),
              color: const Color(0xff545659),
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  const Color(0xff5D6167).withOpacity(0.0),
                  const Color(0xff13151A).withOpacity(1),
                ],
              ),
            ),
            child: Align(
              alignment: Alignment.center,
              child: widget,
            ),
          ),
        ),
      ),
    );
  }
}
