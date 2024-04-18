import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'package:tesla/constans/assets_path.dart';
import 'package:tesla/pages/home/sy_home_page.dart';
import 'package:tesla/utils/sy_multi_language.dart';
import 'package:tesla/utils/sy_navigator.dart';
import 'package:tesla/widgets/sy_control_widget.dart';

import '../../constans/app_colors.dart';
import '../../widgets/sy_appBarBtn_widget.dart';
import '../../widgets/sy_bottomBar_widget.dart';
import '../../widgets/sy_btnSlider_widget.dart';
import '../../widgets/sy_circularSlider_widget.dart';
import '../../widgets/sy_text_widget.dart';

class SyClimatePage extends StatefulWidget {
  const SyClimatePage({super.key});

  @override
  State<SyClimatePage> createState() => _SyClimatePageState();
}

class _SyClimatePageState extends State<SyClimatePage> {
  int volume = 0;
  final List<SyControlItem> _controlItemList = [
    SyControlItem(img: SvgIcon.snow, title: 'Ac', des: ''),
    SyControlItem(img: SvgIcon.wind, title: 'Fan', des: ''),
    SyControlItem(img: SvgIcon.windWater, title: 'Heat', des: ''),
    SyControlItem(img: SvgIcon.snow, title: 'Ac', des: ''),
    SyControlItem(img: SvgIcon.wind, title: 'Fan', des: ''),
    SyControlItem(img: SvgIcon.windWater, title: 'Heat', des: ''),
  ];

  @override
  void dispose() {
    volume = 0;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: AppColors.unlockPageGradient,
      ),
      appBar: AppBar(
        title: SyTextWidget(
          text: SyMultiLanguage.multiLanguage().str_climate,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
        toolbarHeight: lerpDouble(5, 14, 10),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: AppColors.appBarGradient,
            ),
          ),
        ),
        leading: SyAppBarBtnWidget(
            widget: const Icon(
              Icons.keyboard_arrow_left,
              color: Colors.grey,
            ),
            onPressed: () {
              SyNavigator.pop();
            }),
        leadingWidth: 140.w,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: SyAppBarBtnWidget(
                widget: const Icon(
                  Icons.settings,
                  color: Colors.grey,
                ),
                onPressed: () {}),
          )
        ],
      ),
      extendBody:
          true, //如果为 true，并且指定了 BottomNavigationBar 或 permanentFooterButtons，则主体将延伸到 Scaffold 的底部，而不是仅延伸到 BottomNavigationBar 或 permanentFooterButtons 的顶部
      body: Stack(
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 6,
                  child: Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      const SyBtnSliderWidget(),
                      SyCircularSliderWidget(
                        onAngleChanged: (angle) {
                          volume = ((angle / (3.14 * 2)) * 51).toInt();
                          setState(() {});
                        },
                      ),
                      Center(
                        child: SyTextWidget(
                          text: "$volume °C",
                          fontWeight: FontWeight.w800,
                          fontSize: 50.sp,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Center(
                    child: GlassmorphicContainer(
                      width: MediaQuery.of(context).size.width - 60.w,
                      height: 600.h,
                      borderRadius: 50.r,
                      blur: 20,
                      alignment: Alignment.bottomCenter,
                      border: 1,
                      linearGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.grey.withOpacity(0.10),
                            Colors.grey.withOpacity(0.10),
                          ],
                          stops: const [
                            0.1,
                            1,
                          ]),
                      borderGradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.center,
                        colors: [
                          const Color(0xFFffffff).withOpacity(0.2),
                          const Color((0xFF282A2F)),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 10.w),
                        child: ListView.builder(
                            padding: EdgeInsets.all(20.w),
                            // primary: false,
                            // shrinkWrap: true,
                            // physics: const NeverScrollableScrollPhysics(),
                            itemCount: _controlItemList.length,
                            itemBuilder: (context, index) {
                              var item = _controlItemList[index];
                              return SyControlWidget(
                                title: item.title,
                                icon: Center(
                                  child: item.img,
                                ),
                              );
                            }),
                      ),
                    ),
                  ),
                )
              ]),
          const SyBottomBarWidget(),
        ],
      ),
    );
  }
}
