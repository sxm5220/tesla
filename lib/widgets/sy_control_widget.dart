import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:tesla/widgets/sy_text_widget.dart';

class SyControlWidget extends StatefulWidget {
  final Widget? icon;
  final String title;

  const SyControlWidget({
    super.key,
    this.icon,
    required this.title,
  });

  @override
  State<SyControlWidget> createState() => _SyControlWidgetState();
}

class _SyControlWidgetState extends State<SyControlWidget> {
  late bool pressed = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: SyTextWidget(
              text: widget.title,
              fontSize: 30.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF9d9fa6),
            ),
          ),
          Expanded(
            flex: 5,
            child: Row(
              children: [
                CupertinoButton(
                  onPressed: () {
                    pressed = !pressed;
                    setState(() {});
                  },
                  child: Container(
                    height: 100.w,
                    width: 100.w,
                    decoration: BoxDecoration(
                      color: pressed ? Colors.blue : const Color(0xFF232527),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(1.5),
                      child: Container(
                          height: 100.w,
                          width: 100.w,
                          decoration: BoxDecoration(
                            color:
                                pressed ? Colors.blue : const Color(0xff545659),
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: pressed
                                  ? [
                                      const Color(0xFF11A8FD),
                                      const Color(0xFF005EA3),
                                    ]
                                  : [
                                      const Color(0xff2e3235),
                                      const Color(0xff181919),
                                    ],
                            ),
                          ),
                          child: widget.icon),
                    ),
                  ),
                ),
                Gap(20.w),
                const CustomSlider(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});
  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider>
    with TickerProviderStateMixin {
  double sliderWidth = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
      height: 30.w,
      width: 338.w,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            height: 15.w,
            width: 380.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.r),
              color: Color.alphaBlend(const Color(0xffFFFFFF).withOpacity(0.08),
                  const Color(0xff000000).withOpacity(0.8)),
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 1),
            height: 15.w,
            width: sliderWidth,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: const Color(0xff2FB8FF), blurRadius: 20.r)
                ],
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xff2FB8FF), Color(0xff9EECD9)]),
                borderRadius: BorderRadius.circular(40.r)),
          ),
          MoveableWidget(
            func: (son) {
              if (son >= 0) {
                sliderWidth = son;
              }
              setState(() {});
            },
          ),
        ],
      ),
    ));
  }
}

class MoveableWidget extends StatefulWidget {
  final void Function(double size)? func;
  const MoveableWidget({this.func, super.key});

  @override
  _MoveableWidgetState createState() => _MoveableWidgetState();
}

class _MoveableWidgetState extends State<MoveableWidget> {
  double _x = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        setState(() {
          _x += details.delta.dx;
          widget.func!(_x);
        });
      },
      child: Stack(
        children: [
          AnimatedPositioned(
              left: _x < 0
                  ? 0
                  : _x > 190 - 27.5
                      ? 190 - 27.5
                      : _x,
              duration: const Duration(milliseconds: 1),
              child: const KnobWidget(
                changeSize: 1,
              )),
        ],
      ),
    );
  }
}

class KnobWidget extends StatelessWidget {
  final double changeSize;
  const KnobWidget({
    required this.changeSize,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55.w * changeSize,
      height: 30.w * changeSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60.r * changeSize),
        color: const Color(0xFF212325),
        gradient: const LinearGradient(colors: [
          Color(0xFF2E3236),
          Color(0xFF141515),
        ]),
        border: Border.all(color: const Color(0xFF212325), width: 1 * 5),
      ),
      child: Center(
        child: Row(
          children: [
            const Spacer(),
            Container(
              width: 7.5.w * changeSize,
              height: 26.w * changeSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1.56 * changeSize),
                color: const Color(0xFF272A2E),
                gradient: const LinearGradient(colors: [
                  Color(0xFF141515),
                  Color(0xFF2E3236),
                ]),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF000000).withOpacity(0.37),
                    offset: const Offset(10, 10),
                    blurRadius: 20,
                    spreadRadius: 0,
                  ),
                  BoxShadow(
                    color: const Color(0xFFFFFFFF).withOpacity(0.07),
                    offset: const Offset(-10, -10),
                    blurRadius: 20,
                    spreadRadius: 0,
                  ),
                ],
              ),
            ),
            Gap(8.w),
            Container(
              width: 3.75 * changeSize,
              height: 13 * changeSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1.56 * changeSize),
                color: const Color(0xFF272A2E),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF141515),
                    Color(0xFF2E3236),
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF000000).withOpacity(0.37),
                    offset: const Offset(10, 10),
                    blurRadius: 20,
                    spreadRadius: 0,
                  ),
                  BoxShadow(
                    color: const Color(0xFFFFFFFF).withOpacity(0.07),
                    offset: const Offset(-10, -10),
                    blurRadius: 20,
                    spreadRadius: 0,
                  ),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
