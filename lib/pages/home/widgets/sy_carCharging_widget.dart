import 'package:flutter/cupertino.dart';

import '../../../constans/app_colors.dart';

class SyCarChargingWidget extends StatelessWidget {
  const SyCarChargingWidget({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: size.height * 0.6,
      width: size.width * 0.70,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: SizedBox(
                width: size.width * 0.45 + 200,
                height: size.width * 0.45 + 150,
                child: const CustomRipple()),
          ),
          Positioned.fill(
            child: Center(
              child: Container(
                width: size.width * 0.45,
                height: size.width * 0.45,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: AppColors.kPrimaryColor.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ], shape: BoxShape.circle, gradient: AppColors.kStatsGradient),
              ),
            ),
          ),
          Positioned(
            left: size.width * 0.055,
            top: size.height * 0.05,
            child: ChargerCircles(size: size),
          ),
          Positioned(
            right: size.width * 0.055,
            top: size.height * 0.05,
            child: ChargerCircles(size: size),
          ),
          Positioned(
            left: size.width * 0.055,
            bottom: size.height * 0.05,
            child: ChargerCircles(size: size),
          ),
          Positioned(
            right: size.width * 0.055,
            bottom: size.height * 0.05,
            child: ChargerCircles(size: size),
          ),
          SizedBox(
            height: size.height * 0.65,
            child: Image.asset(
              'assets/images/bird_view_tesla.png',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomRipple extends StatefulWidget {
  const CustomRipple({Key? key}) : super(key: key);

  @override
  _CustomRippleState createState() => _CustomRippleState();
}

class _CustomRippleState extends State<CustomRipple>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200));
    _animation = Tween<double>(begin: 0.4, end: 0.8).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColors.kPrimaryColor.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 1,
                offset: const Offset(0, 1), // changes position of shadow
              ),
            ],
            border: Border.all(color: AppColors.kPrimaryColor, width: 2),
            shape: BoxShape.circle),
      ),
    );
  }
}

class ChargerCircles extends StatelessWidget {
  const ChargerCircles({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.12,
      width: size.height * 0.12,
      child: const Stack(
        alignment: Alignment.center,
        children: [
          CustomRipple(),
          SizedBox(
            height: 60,
            width: 60,
            child: CustomRipple(),
          )
        ],
      ),
    );
  }
}
