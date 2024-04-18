import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:tesla/constans/assets_path.dart';

import '../../utils/sy_app_theme.dart';
import '../../widgets/sy_icon_widget.dart';
import '../../widgets/sy_text_widget.dart';

class SyMusicPage extends StatefulWidget {
  const SyMusicPage({super.key});

  @override
  State<SyMusicPage> createState() => _SyMusicPageState();
}

class _SyMusicPageState extends State<SyMusicPage> {
  String _titleName = '听妈妈的话';
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: SyTextWidget(
              text: _titleName, fontSize: 28.sp, fontWeight: AppTheme.medium),
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
          backgroundColor: Theme.of(context).canvasColor,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
            Colors.black.withOpacity(.0),
            Colors.black.withOpacity(1)
          ])),
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: 1.sh * .6,
                  child: Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SyTimerWidget(
                            min: 02,
                            secs: 34,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, bottom: 0),
                            child: Container(
                              height: 1.sh * .5,
                              width: 1.sw * .5,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(130),
                                    bottomRight: Radius.circular(130)),
                                image: DecorationImage(
                                    image: AssetImage(
                                        backGroundImagesPath.itemBg01),
                                    fit: BoxFit.fitHeight),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 10,
                                    spreadRadius: 3,
                                    offset: Offset(0, 8), // Shadow position
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SyTimerWidget(
                            min: 02,
                            secs: 34,
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 1.sh * .5 * .15,
                        child: SleekCircularSlider(
                          appearance: CircularSliderAppearance(
                              size: 1.sw * 0.6,
                              angleRange: 140,
                              startAngle: 160,
                              counterClockwise: true,
                              customWidths: CustomSliderWidths(
                                trackWidth: 4,
                                progressBarWidth: 4,
                                shadowWidth: 3,
                                handlerSize: 6,
                              ),
                              infoProperties: InfoProperties(
                                  mainLabelStyle: const TextStyle(
                                      color: Colors.transparent)),
                              customColors: CustomSliderColors(
                                  trackColor: Colors.black.withOpacity(.5),
                                  progressBarColor: Colors.white,
                                  dotColor: Colors.white)),
                          min: 0,
                          initialValue: 30,
                          onChange: (double v) {},
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1.sh * .15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SyIconWidget(
                        onPressed: () {},
                        icon: Icons.shuffle_rounded,
                        iconColor: Colors.white,
                        iconSize: 40.r,
                      ),
                      Container(
                        width: 1.sw * 0.6,
                        height: 1.sh * 0.075,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 20,
                              spreadRadius: 2,
                              offset: Offset(-1, 5),
                              // Shadow position
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SyIconWidget(
                              onPressed: () {},
                              icon: Icons.fast_rewind_rounded,
                              iconColor: Colors.black,
                              iconSize: 40.r,
                            ),
                            SyIconWidget(
                              onPressed: () {},
                              icon: Icons.play_circle_fill_rounded,
                              iconColor: Colors.black,
                              iconSize: 50.r,
                            ),
                            SyIconWidget(
                              onPressed: () {},
                              icon: Icons.fast_forward_rounded,
                              iconColor: Colors.black,
                              iconSize: 40.r,
                            ),
                          ],
                        ),
                      ),
                      SyIconWidget(
                        onPressed: () {},
                        icon: Icons.repeat,
                        iconColor: Colors.white,
                        iconSize: 40.r,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SyTimerWidget extends StatelessWidget {
  const SyTimerWidget({super.key, required this.min, required this.secs});
  final int min;
  final int secs;

  @override
  Widget build(BuildContext context) {
    return SyTextWidget(
      text: '$min : ' '$secs',
      color: Colors.white.withOpacity(.8),
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
    );
  }
}
