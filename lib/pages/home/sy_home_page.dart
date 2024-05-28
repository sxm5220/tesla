import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'package:tesla/constans/assets_path.dart';
import 'package:tesla/pages/home/widgets/GeneralHealth.dart';
import 'package:tesla/pages/home/widgets/StatsPage.dart';
import 'package:tesla/pages/home/widgets/sy_carCharging_widget.dart';
import 'package:tesla/utils/sy_multi_language.dart';
import 'package:tesla/utils/sy_public_util.dart';
import 'package:tesla/widgets/sy_appBarBtn_widget.dart';
import 'package:tesla/widgets/sy_controlPanel_widget.dart';

import '../../constans/app_colors.dart';
import '../../widgets/sy_text_widget.dart';

class SyControlItem {
  final SvgPicture img;
  final String title;
  final String des;
  SyControlItem({required this.img, required this.title, required this.des});
}

class SyHomePage extends StatefulWidget {
  const SyHomePage({super.key});

  @override
  State<SyHomePage> createState() => _SyHomePageState();
}

class _SyHomePageState extends State<SyHomePage> {
  final List<SyControlItem> _controlItemList = [
    SyControlItem(
        img: SvgIcon.car_2,
        title: SyMultiLanguage.multiLanguage().str_control,
        des: ''),
    SyControlItem(
        img: SvgIcon.vent,
        title: SyMultiLanguage.multiLanguage().str_climate,
        des: SyMultiLanguage.multiLanguage().str_interior20),
    SyControlItem(
        img: SvgIcon.location,
        title: SyMultiLanguage.multiLanguage().str_location,
        des: SyMultiLanguage.multiLanguage().str_rue81StChales),
    SyControlItem(
        img: SvgIcon.alarm,
        title: SyMultiLanguage.multiLanguage().str_schedule,
        des: ""),
    SyControlItem(
        img: SvgIcon.car_2,
        title: SyMultiLanguage.multiLanguage().str_control,
        des: ''),
    SyControlItem(
        img: SvgIcon.vent,
        title: SyMultiLanguage.multiLanguage().str_climate,
        des: SyMultiLanguage.multiLanguage().str_interior20),
    SyControlItem(
        img: SvgIcon.location,
        title: SyMultiLanguage.multiLanguage().str_location,
        des: SyMultiLanguage.multiLanguage().str_rue81StChales),
    SyControlItem(
        img: SvgIcon.alarm,
        title: SyMultiLanguage.multiLanguage().str_schedule,
        des: "")
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width * 0.13;
    var height = size.height * 0.2;
    return ScaffoldGradientBackground(
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: AppColors.unlockPageGradient,
      ),
      appBar: AppBar(
        toolbarHeight: lerpDouble(4, 18, 7),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: AppColors.appBarGradient,
            ),
          ),
        ),
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SyTextWidget(
              text: SyMultiLanguage.multiLanguage().str_tesla,
              fontSize: 55.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.lightShadowlight,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.w),
              child: Image(
                image: AssetImage(ImagesPath.km),
              ),
            )
          ],
        ),
        leadingWidth: 200.w,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: SyAppBarBtnWidget(
                widget: const Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
                onPressed: () {}),
          )
        ],
      ),
      extendBody:
          true, //如果为 true，并且指定了 BottomNavigationBar 或 permanentFooterButtons，则主体将延伸到 Scaffold 的底部，而不是仅延伸到 BottomNavigationBar 或 permanentFooterButtons 的顶部
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 100.w),
        child: Center(
          child: Column(
            children: [
              Gap(40.w),
              Container(
                height: 400.w,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImagesPath.teslaGrey))),
              ),
              const StatsPage(),
              SyCarChargingWidget(size: MediaQuery.of(context).size),
              GeneralHealth(width: width, height: height),
              Gap(20.w),
              const SyControlPanelWidget(),
              Gap(50.w),
              Center(
                child: GlassmorphicContainer(
                  width: MediaQuery.of(context).size.width - 120.w,
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
                  child: ListView.builder(
                    padding: EdgeInsets.all(20.w),
                    // primary: false,
                    // shrinkWrap: true,
                    // physics: const NeverScrollableScrollPhysics(),
                    itemCount: _controlItemList.length,
                    itemBuilder: (context, index) {
                      var item = _controlItemList[index];
                      return InkWell(
                        onTap: () {
                          syPrint('select index:$index title:${item.title}');
                        },
                        child: Padding(
                          padding: EdgeInsets.only(top: 50.w, left: 30.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  item.img,
                                  item.des.isNotEmpty
                                      ? Padding(
                                          padding: EdgeInsets.all(15.w),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SyTextWidget(
                                                text: item.title,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w800,
                                                fontSize: 30.sp,
                                              ),
                                              SyTextWidget(
                                                text: item.des,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w800,
                                                fontSize: 20.sp,
                                              ),
                                            ],
                                          ),
                                        )
                                      : Padding(
                                          padding: EdgeInsets.all(15.w),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SyTextWidget(
                                                text: item.title,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w800,
                                                fontSize: 30.sp,
                                              ),
                                            ],
                                          ),
                                        ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(20.w),
                                child: const Icon(Icons.chevron_right_rounded,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
