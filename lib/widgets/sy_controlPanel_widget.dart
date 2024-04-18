import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tesla/utils/sy_navigator.dart';

import '../constans/assets_path.dart';
import '../route/sy_route.dart';

class SyControlPanelWidget extends StatefulWidget {
  const SyControlPanelWidget({super.key});

  @override
  State<SyControlPanelWidget> createState() => _SyControlPanelWidgetState();
}

class _SyControlPanelWidgetState extends State<SyControlPanelWidget> {
  bool lockFillColor = true;
  bool windSnowColor = true;
  bool chargeBulbColor = true;
  bool carDetailedColor = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 650.w,
      height: 150.w,
      decoration: BoxDecoration(
        color: const Color(0xD91E1F20),
        borderRadius: BorderRadius.circular(100.r),
        boxShadow: [
          BoxShadow(
            offset: Offset(-70.w, -70.w),
            blurRadius: 40.r,
            color: const Color.fromRGBO(255, 255, 255, .04),
          ),
          BoxShadow(
            offset: Offset(-90.w, -110.w),
            blurRadius: 4.r,
            color: const Color.fromRGBO(0, 0, 0, .02),
          ),
          BoxShadow(
            offset: Offset(-1, 60.w),
            blurRadius: 40.r,
            color: const Color.fromRGBO(0, 0, 0, .35),
          ),
          BoxShadow(
            offset: Offset(-20.w, -40.w),
            blurRadius: 32.r,
            color: const Color(0x0fffffff),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CupertinoButton(
            child: SvgIcon.lock,
            onPressed: () {
              setState(() {
                SyNavigator.offNamed(SyRoute.getInitial());
              });
            },
          ),
          CupertinoButton(
            child: SvgIcon.vent,
            onPressed: () {
              setState(() {
                SyNavigator.toNamed(SyRoute.getClimate());
              });
            },
          ),
          CupertinoButton(
            child: SvgIcon.charge,
            onPressed: () {
              setState(() {
                SyNavigator.toNamed(SyRoute.getCharge());
              });
            },
          ),
          CupertinoButton(
            child: SvgIcon.car_1,
            onPressed: () {
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
