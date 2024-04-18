import 'package:flutter/cupertino.dart';

class SyIconBtnWidget extends StatelessWidget {
  final AssetImage image;
  final void Function()? onPressed;

  const SyIconBtnWidget({
    Key? key,
    required this.image,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff5D5E5F),
            Color(0xff000000),
          ],
        ),
      ),
      child: Container(
        width: 55,
        height: 55,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color(0xff0C0D0E),
              Color(0xff3E434B),
            ],
          ),
        ),
        child: Container(
          width: 50,
          height: 50,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff16181B),
                Color(0xff2C3035),
              ],
            ),
          ),
          child: SizedBox(
            width: 25,
            height: 25,
            child: Image(
              image: image,
            ),
          ),
        ),
      ),
    );
  }
}
