import 'package:flutter/material.dart';

import '../../../constans/app_colors.dart';

const double paddingContainers = 20.0;
const kCircularBorder = 12.0;
const bottomSizeIcon = 35.0;
const batteryCharge = 85.0;
const motorPercent = 65.0;
const tempBatteryPercent = 35.0;
const brakePercent = 78.0;
const suspensionPercent = 53.0;

class GeneralHealth extends StatelessWidget {
  const GeneralHealth({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      margin: const EdgeInsets.symmetric(horizontal: paddingContainers),
      decoration: BoxDecoration(
          gradient: AppColors.kCardGradient,
          borderRadius: BorderRadius.circular(kCircularBorder)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          VerticalPercentIndicator(
              showLabel: true,
              label: 'Motor',
              width: width,
              height: height,
              percent: motorPercent / 100),
          VerticalPercentIndicator(
              showLabel: true,
              label: 'Battery Temp',
              width: width,
              height: height,
              percent: tempBatteryPercent / 100),
          VerticalPercentIndicator(
              showLabel: true,
              label: 'Brakers',
              width: width,
              height: height,
              percent: brakePercent / 100),
          VerticalPercentIndicator(
              showLabel: true,
              label: 'Suspensions',
              width: width,
              height: height,
              percent: suspensionPercent / 100),
        ],
      ),
    );
  }
}

class VerticalPercentIndicator extends StatefulWidget {
  VerticalPercentIndicator({
    Key? key,
    required this.height,
    required this.width,
    required this.percent,
    required this.label,
    required this.showLabel,
  }) : super(key: key);

  final double height, width, percent;
  String label;
  final bool showLabel;

  @override
  State<VerticalPercentIndicator> createState() =>
      _VerticalPercentIndicatorState();
}

class _VerticalPercentIndicatorState extends State<VerticalPercentIndicator>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2500));
    _animation = Tween<double>(begin: 0.1, end: 1).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controller.forward();
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
    return Column(
      children: [
        Container(
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
              color: AppColors.kBottomAppBarColor,
              borderRadius: BorderRadius.circular(15)),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                  decoration: const BoxDecoration(
                      gradient: AppColors.kStatsGradient,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      )),
                  height: widget.height * widget.percent * _animation.value),
            ],
          ),
        ),
        if (widget.showLabel == true) const SizedBox(height: 10),
        if (widget.showLabel == true)
          Text(widget.label, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}
