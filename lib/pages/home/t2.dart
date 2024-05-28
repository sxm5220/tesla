import 'package:animate_do/animate_do.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tesla/pages/home/t2DetailScreen.dart';

import '../../constans/app_colors.dart';

class T2 extends StatefulWidget {
  const T2({super.key});

  @override
  State<T2> createState() => _T2State();
}

class _T2State extends State<T2> {
  bool isLocked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBarBackgroundColor,
        title: isLocked ? FadeInDown(child: titleAppBar(context)) : null,
        actions: [
          if (!isLocked) ...{
            settingAppBar(context),
          } else ...{
            personAppBar(context)
          }
        ],
        leading: isLocked ? menueAppBar(context) : null,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF2F353A),
              Color(0xff0D0B0D),
            ],
          ),
        ),
        child: ListView(
          children: [
            if (!isLocked) ...{
              AnimatedContainer(
                curve: Curves.linear,
                duration: const Duration(seconds: 2),
                transform: Matrix4.translationValues(
                  0,
                  isLocked ? -MediaQuery.of(context).size.height : 0,
                  0,
                ),
                child: topBody(context),
              )
            } else ...{
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                transform: Matrix4.translationValues(
                    0, isLocked ? 0 : MediaQuery.of(context).size.height, 0),
                child: carFront(),
              ),
            },
            const SizedBox(
              height: 10,
            ),
            if (!isLocked) ...{
              AnimatedContainer(
                  curve: Curves.linear,
                  duration: const Duration(seconds: 3),
                  transform: Matrix4.translationValues(
                      isLocked ? MediaQuery.of(context).size.height : 0, 0, 0),
                  child: centerBody(context))
            } else ...{
              statusCenter(context)
            },
            const SizedBox(
              height: 10,
            ),
            if (!isLocked) ...{
              AnimatedContainer(
                curve: Curves.linear,
                duration: const Duration(seconds: 3),
                transform: Matrix4.translationValues(
                    0, isLocked ? MediaQuery.of(context).size.height : 0, 0),
                child: endBody(context),
              ),
            } else ...{
              buttonAC(context)
            }
          ],
        ),
      ),
    );
  }

  Column titleAppBar(BuildContext context) {
    return Column(
      children: [
        Text(
          'Tesla',
          style: TextStyle(color: Colors.grey),
        ),
        Text(
          'Cybertruck',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  AnimatedContainer settingAppBar(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.linear,
      duration: const Duration(seconds: 3),
      transform: Matrix4.translationValues(
          0, isLocked ? -MediaQuery.of(context).size.height : 0, 0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: SizedBox(
          // width: 90,
          child: FadeInDown(
            child: buildNeumorphicButton(
              path: 'assets/images/setting.png',
              onPressed: () {
                //  print('object');
              },
              borerWidth: 0.6,
              scale: 0.5,
              color: AppColors.neumorphicBackgroundColor,
              borderColor: AppColors.neumorphicBorderColor,
            ),
          ),
        ),
      ),
    );
  }

  AnimatedContainer menueAppBar(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.linear,
      duration: const Duration(seconds: 3),
      transform: Matrix4.translationValues(
          0, isLocked ? 0 : -MediaQuery.of(context).size.height, 0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: SizedBox(
          // width: 90,
          child: FadeInDown(
            child: buildNeumorphicButton(
              path: 'assets/images/menu.png',
              onPressed: () {
                //  print('object');
              },
              borerWidth: 0.6,
              scale: 0.5,
              color: AppColors.neumorphicBackgroundColor,
              borderColor: AppColors.neumorphicBorderColor,
            ),
          ),
        ),
      ),
    );
  }

  AnimatedContainer personAppBar(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.linear,
      duration: const Duration(seconds: 1),
      transform: Matrix4.translationValues(
          0, isLocked ? 0 : -MediaQuery.of(context).size.height, 0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: SizedBox(
          // width: 90,
          child: FadeInDownBig(
            child: buildNeumorphicButton(
              path: 'assets/images/person.png',
              onPressed: () {
                //  print('object');
              },
              borerWidth: 0.6,
              scale: 0.5,
              color: AppColors.neumorphicBackgroundColor,
              borderColor: AppColors.neumorphicBorderColor,
            ),
          ),
        ),
      ),
    );
  }

  Widget carFront() {
    return FadeInRightBig(
      //delay: const Duration(seconds: 1),
      child: Image.asset('assets/images/car-front.png'),
    );
  }

  Widget buttonAC(BuildContext context) {
    return FadeInUp(
      child: Container(
        height: 150,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [
              Color(0xFF353A40),
              Color(0xFF15161A),
            ],
          ),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
          border: Border.all(
            strokeAlign: BorderSide.strokeAlignOutside,
            color: AppColors.neumorphicShadowDarkColorEmboss,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'A/C is ON',
                  ),
                  Text(
                    'Tap to turn off or swipe up\for a fast setup',
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 75,
              child: buildNeumorphicButton(
                path: 'assets/images/power.png',
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          duration: const Duration(milliseconds: 400),
                          type: PageTransitionType.bottomToTopPop,
                          child: const T2DetailScreen(),
                          childCurrent: const T2(),
                          isIos: true));
                },
                borerWidth: 2,
                scale: 0.3,
                color: AppColors.neumorphicBackgroundColorbtnBlue,
                borderColor: AppColors.neumorphicBorderColorBtnBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget statusCenter(BuildContext context) {
    return FadeInLeft(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45),
            child: Text(
              'Status',
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FadeIn(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/battery.png',
                          width: 8,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Battery',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '54%',
                    )
                  ],
                ),
              ),
              FadeIn(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/range.png',
                          width: 11,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Range',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '297 km',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              FadeIn(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/tempreture.png',
                          width: 8,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Range',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '297 km',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          FadeInLeft(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: Text(
                'Information',
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 200,
            child: FadeIn(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                scrollDirection: Axis.horizontal,
                children: [
                  infoButton(
                      context: context,
                      onPressed: () {},
                      borderRaduis: 5,
                      info: 'Engine',
                      subtitle: 'Sleeping mode',
                      borerWidth: 1),
                  const SizedBox(
                    width: 20,
                  ),
                  infoButton(
                      context: context,
                      onPressed: () {},
                      borderRaduis: 5,
                      info: 'Climate',
                      subtitle: 'A/C is ON',
                      borerWidth: 1),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Column endBody(BuildContext context) {
    return Column(
      children: [
        Text(
          'A/C is turned on',
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 60,
          child: buildNeumorphicButton(
            path: 'assets/images/lock.png',
            onPressed: () {
              setState(() {
                isLocked = !isLocked; // Toggle the lock state
              });
            },
            borerWidth: 2,
            scale: 0.9,
            color: AppColors.neumorphicBackgroundColorbtnBlue,
            borderColor: AppColors.neumorphicBorderColorBtnBlue,
          ),
        )
      ],
    );
  }

  Column topBody(BuildContext context) {
    return Column(
      children: [
        Text(
          'Tesla',
        ),
        Text(
          'Cybertruck',
        ),
      ],
    );
  }
}

Stack centerBody(BuildContext context) {
  return Stack(
    alignment: Alignment.centerRight,
    children: [
      SizedBox(
        height: 450,
        width: MediaQuery.of(context).size.width,
      ),
      Positioned(
        top: 0,
        right: 80,
        child: Text(
          '297',
          style: TextStyle(fontSize: 120),
        ),
      ),
      Positioned(
        right: 40,
        top: 30,
        child: Text(
          'km',
        ),
      ),
      Positioned(
        child: FadeInRightBig(
          child: Image.asset(
            'assets/images/cybertruck-mod-black2 1.png',
            //width: MediaQuery.of(context).size.width * 0.9,
            height: 250,
            fit: BoxFit.cover,
          ),
        ),
      ),
    ],
  );
}

Widget buildNeumorphicButton({
  required String path,
  required VoidCallback onPressed,
  required Color color,
  required Color borderColor,
  required double borerWidth,
  required double scale,
  double? depth = 15,
}) {
  return NeumorphicButton(
    duration: const Duration(milliseconds: 300),
    onPressed: onPressed,
    curve: Curves.linear,
    minDistance: 0,
    padding: const EdgeInsets.all(8.0),
    style: NeumorphicStyle(
      intensity: 0.8,
      shadowDarkColorEmboss: AppColors.neumorphicShadowDarkColorEmboss,
      shadowLightColor: AppColors.neumorphicShadowLightColor,
      surfaceIntensity: 0.1,
      border: NeumorphicBorder(
        isEnabled: true,
        color: borderColor,
        width: borerWidth,
      ),
      shape: NeumorphicShape.convex,
      boxShape: const NeumorphicBoxShape.circle(),
      depth: depth,
      disableDepth: false,
      shadowDarkColor: AppColors.neumorphicShadowDarkColor,
      color: color,
    ),
    child: Transform.scale(
      scale: scale,
      child: Image.asset(
        path,
      ),
    ),
  );
}

Widget infoButton({
  required BuildContext context,
  required VoidCallback onPressed,
  required double borerWidth,
  required double borderRaduis,
  required String info,
  required String subtitle,
}) {
  return NeumorphicButton(
    duration: const Duration(milliseconds: 300),
    onPressed: onPressed,
    curve: Curves.linear,
    minDistance: 0.0,
    padding: const EdgeInsets.all(8.0),
    style: NeumorphicStyle(
      intensity: 0.5,
      shadowDarkColorEmboss: AppColors.neumorphicShadowDarkColorEmboss,
      shadowLightColor: AppColors.neumorphicShadowLightColor,
      border: NeumorphicBorder(
        isEnabled: true,
        color: AppColors.infoBackgroundColor,
        width: borerWidth,
      ),
      shape: NeumorphicShape.convex,
      boxShape: NeumorphicBoxShape.beveled(
        BorderRadius.all(
          Radius.circular(borderRaduis),
        ),
      ),
      depth: 2,
      disableDepth: false,
      shadowDarkColor: AppColors.neumorphicShadowDarkColor,
      color: AppColors.infoBackgroundColor,
    ),
    child: Stack(
      children: [
        Image.asset('assets/images/mask.png'),
        Positioned(
            bottom: 20,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  info,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  subtitle,
                ),
              ],
            ))
      ],
    ),
  );
}
