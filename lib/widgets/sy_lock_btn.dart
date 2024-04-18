import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:tesla/widgets/sy_appBarBtn_widget.dart';

import '../constans/app_colors.dart';
import '../constans/assets_path.dart';

class SyLockBtn extends StatelessWidget {
  const SyLockBtn(
      {super.key,
      required this.onPress,
      required this.text,
      required this.isLock});
  final void Function() onPress;
  final String text;
  final bool isLock;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 70,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: AppColors.lockButtonGradient,
          ),
        ),
        child: Neumorphic(
          style: NeumorphicStyle(
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
            color: const Color(0xFF18191B),
            depth: -10,
            // intensity: 1,
            shadowLightColorEmboss: Colors.white.withOpacity(0.4),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: AppTextStyles.sfProDisplay17
                      .copyWith(color: Colors.white),
                ),
                SyAppBarBtnWidget(
                  widget: isLock ? SvgIcon.lock : SvgIcon.unlock,
                  onPressed: onPress,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
