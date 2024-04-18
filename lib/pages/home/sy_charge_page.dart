import 'dart:ui' as ui;

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

import '../../constans/app_colors.dart';
import '../../constans/assets_path.dart';
import '../../utils/sy_multi_language.dart';
import '../../utils/sy_navigator.dart';
import '../../widgets/sy_appBarBtn_widget.dart';
import '../../widgets/sy_text_widget.dart';

class SyChargePage extends StatefulWidget {
  const SyChargePage({super.key});

  @override
  State<SyChargePage> createState() => _SyChargePageState();
}

class _SyChargePageState extends State<SyChargePage> {
  int battery = 70;
  double chargeWidth = 0;
  double currentValue = 0;
  bool setCharge = false;
  double height = 150.w;
  bool component = false;

  bool selectedCar = true;
  bool selectedLightning = false;
  bool selectedKey = false;
  bool selectedPerson = false;

  void func() async {
    height = (height == 150.w) ? 450.w : 150.w;
    setState(() {});
    component
        ? Future.delayed(const Duration(microseconds: 1))
        : await Future.delayed(const Duration(milliseconds: 250));
    component = !component;
    setState(() {});
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    currentValue = battery / 100;
  }

  @override
  Widget build(BuildContext context) {
    chargeWidth = MediaQuery.of(context).size.width - 60.w;
    return ScaffoldGradientBackground(
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: AppColors.unlockPageGradient,
      ),
      appBar: AppBar(
        title: SyTextWidget(
          text: SyMultiLanguage.multiLanguage().str_charging,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
        toolbarHeight: ui.lerpDouble(5, 14, 10),
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 10.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //图片
              Padding(
                padding: EdgeInsets.only(top: 5.w),
                child: SizedBox(
                  width: 700.w,
                  height: 400.w,
                  child: Image(
                    image: AssetImage(ImagesPath.teslaLeft),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              //电池
              Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "$battery",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 80.sp,
                                fontWeight: FontWeight.w600)),
                        TextSpan(
                            text: "%",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 52.sp)),
                      ]),
                    ),
                  ),
                  SizedBox(
                    width: chargeWidth,
                    height: 200.w,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              height: 200.w,
                              width: (chargeWidth - 60.w) * battery / 100,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0x00ebeefe),
                                    Color(0x808de1eb),
                                    Color(0xb28fb6e6),
                                    Color(0xff5daab3),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        CustomPaint(
                          painter: BatteryIndicator(
                            sizeX: chargeWidth - 60.w,
                            sizeY: 100.w,
                            batteryPercent: battery,
                          ),
                          size: const Size(0, 50),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Gap(20.w),

              /// Text: 70% - 100%
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 60.w,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 4.w,
                            height: 20.w,
                            color: Colors.white,
                          ),
                          Gap(170.w),
                          Container(
                            width: 4.w,
                            height: 20.w,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SyTextWidget(
                            text: "$battery%",
                            color: Colors.white,
                          ),
                          Gap(100.w),
                          const SyTextWidget(
                            text: "100%",
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Gap(5.w),

              /// Slider
              SizedBox(
                width: chargeWidth,
                height: 60.w,
                child: Stack(
                  children: [
                    Align(
                      alignment: const Alignment(0, -1),
                      child: SizedBox(
                        height: 40.w,
                        width: 660.w,
                        child: Neumorphic(
                          style: NeumorphicStyle(
                            boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(40.r),
                            ),
                            depth: -9,
                            color: const Color(0xFF1C1D20),
                            shadowLightColorEmboss:
                                Colors.white.withOpacity(0.5),
                            shadowDarkColorEmboss: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        setCharge = !setCharge;
                        if (setCharge) {
                          for (int i = 1; i <= 30; i++) {
                            await Future.delayed(
                                const Duration(milliseconds: 15), () {
                              battery++;
                              setState(() {});
                            });
                          }
                        } else {
                          for (int i = 1; i <= 30; i++) {
                            await Future.delayed(
                                const Duration(milliseconds: 15), () {
                              --battery;
                              setState(() {});
                            });
                          }
                        }
                        // battery == 70 ? battery = 100 : battery = 70;
                        setState(() {});
                      },
                      child: AnimatedAlign(
                        duration: const Duration(milliseconds: 500),
                        alignment: Alignment(setCharge ? 1 : 0.4, 0),
                        child: Transform.scale(
                          scale: 2,
                          child: CustomPaint(
                            size: Size(50.w, 50.w),
                            painter: RPSCustomPainter(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SyTextWidget(
                text: "Set Charge Limit",
                color: Colors.grey,
              ),
              Gap(100.w),

              /// Messenger
              AnimatedContainer(
                height: height,
                width: MediaQuery.of(context).size.width,
                duration: const Duration(milliseconds: 250),
                child: Neumorphic(
                  style: NeumorphicStyle(
                    boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(20.r)),
                    depth: -10,
                    color: const Color(0xFF202122),
                    shadowDarkColorEmboss: const Color.fromRGBO(0, 0, 0, 0.9),
                    shadowLightColorEmboss:
                        const Color.fromRGBO(255, 255, 255, 0.25),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Nearby Superchargers',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffFFFFFF)),
                            ),
                            SyAppBarBtnWidget(
                                widget: height > 400.w
                                    ? const Icon(
                                        Icons.keyboard_arrow_up,
                                        size: 30,
                                        color: AppColors.textGrey,
                                      )
                                    : const Icon(
                                        Icons.keyboard_arrow_down,
                                        size: 30,
                                        color: AppColors.textGrey,
                                      ),
                                onPressed: func)
                          ],
                        ),
                        // Gap(20.w),
                        (component)
                            ? SizedBox(
                                height: 300.w,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10.w),
                                  child: const SingleChildScrollView(
                                    child: Message(),
                                  ),
                                ),
                              )
                            : const SizedBox(),
                      ],
                    ),
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

class BatteryIndicator extends CustomPainter {
  final double sizeX;
  final double sizeY;
  final int batteryPercent;

  BatteryIndicator(
      {required this.sizeX, required this.sizeY, required this.batteryPercent});

  @override
  void paint(Canvas canvas, Size size) {
    /// Main Box
    double dx = sizeX;
    double dy = sizeY;
    Paint paint2 = Paint()
      ..color = Colors.blue
      ..maskFilter = const MaskFilter.blur(BlurStyle.inner, 0);
    paint2.shader = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [const Color(0xffffffff).withOpacity(0.3), Colors.transparent],
    ).createShader(Offset.zero & const Size(270, 90));
    final mainBox = Path();
    mainBox.moveTo(10, 10);
    mainBox.lineTo(dx - 10, 10);
    mainBox.lineTo(dx, 30);
    mainBox.quadraticBezierTo(dx, dy, dx - 3, dy);
    mainBox.lineTo(0, dy);
    mainBox.lineTo(0, dy);
    mainBox.lineTo(0, 30);
    mainBox.close();
    canvas.drawPath(mainBox, paint2);
    double x = batteryPercent * sizeX / 100;
    size = const Size(160, 70);
    var rect = Offset.zero & size;
    Paint paint1 = Paint()
      ..maskFilter = const MaskFilter.blur(BlurStyle.inner, 0);
    paint1.shader = const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.3, 0.7],
      colors: [
        Color(0xFF2FB8FF),
        Color(0xFF9EECD9),
      ],
    ).createShader(rect);
    final battery = Path();
    battery.moveTo(10, 10);
    battery.lineTo(x - 10, 10);
    battery.lineTo(x * 1.0, 30);
    battery.lineTo(x * 1.0, dy);
    battery.lineTo(0, dy);
    battery.lineTo(0, 30);

    battery.close();
    canvas.drawPath(battery, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class Message extends StatelessWidget {
  const Message({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25, right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tesla Supercharger-',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFEBEBF5).withOpacity(0.60)),
                  ),
                  Text(
                    'Montreal, QC',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFEBEBF5).withOpacity(0.60)),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: '2 /',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600)),
                        TextSpan(
                            text: ' 4 available',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SvgIcon.locationCharge,
                  const Text(
                    '1.7 Km',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        height: 2),
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25, right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tesla Supercharger-',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFEBEBF5).withOpacity(0.60)),
                  ),
                  Text(
                    'Montreal, QC',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFEBEBF5).withOpacity(0.60)),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: '2 /',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600)),
                        TextSpan(
                            text: ' 4 available',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SvgIcon.locationCharge,
                  const Text(
                    '1.7 Km',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        height: 2),
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25, right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tesla Supercharger-',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFEBEBF5).withOpacity(0.60)),
                  ),
                  Text(
                    'Montreal, QC',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFEBEBF5).withOpacity(0.60)),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: '2 /',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600)),
                        TextSpan(
                            text: ' 4 available',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SvgIcon.locationCharge,
                  const Text(
                    '1.7 Km',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        height: 2),
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25, right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tesla Supercharger-',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFEBEBF5).withOpacity(0.60)),
                  ),
                  Text(
                    'Montreal, QC',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFEBEBF5).withOpacity(0.60)),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: '2 /',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600)),
                        TextSpan(
                            text: ' 4 available',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SvgIcon.locationCharge,
                  const Text(
                    '1.7 Km',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        height: 2),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3720729, size.height * 0.4873744);
    path_0.lineTo(size.width * 0.5298396, size.height * 0.1991935);
    path_0.cubicTo(
        size.width * 0.5453625,
        size.height * 0.1708398,
        size.width * 0.5817417,
        size.height * 0.1692767,
        size.width * 0.5991708,
        size.height * 0.1962149);
    path_0.lineTo(size.width * 0.7856208, size.height * 0.4843953);
    path_0.cubicTo(
        size.width * 0.8055229,
        size.height * 0.5151558,
        size.width * 0.7858333,
        size.height * 0.5581395,
        size.width * 0.7518438,
        size.height * 0.5581395);
    path_0.lineTo(size.width * 0.4076271, size.height * 0.5581395);
    path_0.cubicTo(
        size.width * 0.3750896,
        size.height * 0.5581395,
        size.width * 0.3551063,
        size.height * 0.5183674,
        size.width * 0.3720729,
        size.height * 0.4873744);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.5833333, size.height * 0.1395349),
        Offset(size.width * 0.5833333, size.height * 0.5581395), [
      const Color(0xff2FB8FF).withOpacity(1),
      const Color(0xff9EECD9).withOpacity(1)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
