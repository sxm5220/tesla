import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tesla/route/sy_route.dart';
import 'package:tesla/utils/sy_multi_language.dart';
import 'package:tesla/utils/sy_navigator.dart';
import 'package:tesla/widgets/sy_appBarBtn_widget.dart';
import 'package:tesla/widgets/sy_lock_btn.dart';
import 'package:tesla/widgets/sy_toast_widget.dart';

import '../constans/app_colors.dart';
import '../constans/assets_path.dart';
import '../widgets/sy_text_widget.dart';

class SyMainPage extends StatefulWidget {
  const SyMainPage({super.key});

  @override
  State<SyMainPage> createState() => _SyMainPageState();
}

class _SyMainPageState extends State<SyMainPage> {
  bool _isLock = true;
  bool _animation = false;
  double lockOpacity = 1;
  double unlockOpacity = 0;

  @override
  void dispose() {
    _isLock = true;
    _animation = false;
    lockOpacity = 1;
    unlockOpacity = 0;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = _animation
        ? MediaQuery.of(context).size.width
        : MediaQuery.of(context).size.width - 200.w;
    double height = _animation ? 600.w : 500.w;
    return Scaffold(
      body: Body(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.only(left: 40.w, right: 40.w, bottom: 140.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.topRight,
                  child: SyAppBarBtnWidget(
                    widget: Icon(
                      Icons.settings,
                      color: Colors.grey,
                      size: 50.w,
                    ),
                    onPressed: () {
                      if (_isLock) {
                        SyToast.show(
                            SyMultiLanguage.multiLanguage().sy_unlock_tip);
                        return;
                      }
                      // SyNavigator.toNamed(SyRoute.getHome());
                      SyNavigator.offNamed(SyRoute.getInitial());
                    },
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Align(
                  child: Stack(
                    alignment: AlignmentDirectional.topStart,
                    children: [
                      Stack(
                        children: [
                          AnimatedAlign(
                            alignment: Alignment.center,
                            duration: const Duration(seconds: 2),
                            child: AnimatedContainer(
                              width: width,
                              height: height,
                              duration: const Duration(seconds: 2),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(lockOpacity),
                                image: DecorationImage(
                                  image: AssetImage(ImagesPath.teslaDark),
                                ),
                              ),
                            ),
                          ),
                          AnimatedAlign(
                            alignment: Alignment.center,
                            duration: const Duration(seconds: 3),
                            child: AnimatedContainer(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * .3,
                              duration: const Duration(seconds: 1),
                              color: Colors.black.withOpacity(unlockOpacity),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          AnimatedAlign(
                            alignment: _animation
                                ? Alignment.topCenter
                                : Alignment.center,
                            duration: const Duration(seconds: 2),
                            child: SyTextWidget(
                              text: "Tesla Roadster",
                              fontWeight: FontWeight.w700,
                              color: _animation
                                  ? Colors.white
                                  : Colors.grey.withOpacity(.5),
                              fontSize: 40,
                            ),
                          ),
                          AnimatedAlign(
                            alignment: Alignment.center,
                            duration: const Duration(seconds: 2),
                            child: AnimatedContainer(
                              width: width,
                              height: height,
                              duration: const Duration(seconds: 2),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      Colors.transparent,
                                      _animation
                                          ? BlendMode.color
                                          : BlendMode.clear),
                                  image: AssetImage(ImagesPath.teslaWhite),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: SyLockBtn(
                    isLock: _isLock,
                    text: _isLock
                        ? SyMultiLanguage.multiLanguage().sy_unlock
                        : SyMultiLanguage.multiLanguage().sy_lock,
                    onPress: () {
                      setState(() {
                        _isLock = !_isLock;
                        _animation = !_isLock;
                      });
                      // _isLock = !_isLock;
                      Future.delayed(const Duration(milliseconds: 1000), () {
                        setState(() {
                          lockOpacity = _isLock ? 1 : 0;
                          unlockOpacity = _isLock ? 0 : 1;
                        });
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

class Body extends StatelessWidget {
  final Widget? child;

  const Body({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: AppColors.lockPageGradient,
        ),
      ),
      child: child,
    );
  }
}
