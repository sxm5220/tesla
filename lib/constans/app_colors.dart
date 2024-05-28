import 'package:flutter/material.dart';

class AppColors {
  static const LinearGradient kCardGradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color.fromARGB(255, 40, 40, 50),
        Color.fromARGB(255, 40, 40, 45),
      ]);

  static const LinearGradient kStatsGradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        kSecondaryColor,
        kPrimaryColor,
      ]);

  static const LinearGradient kBackGroundGradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color.fromARGB(255, 78, 78, 92),
        Color.fromARGB(255, 43, 46, 56),
      ]);

  static const Color neumorphicBackgroundColor = Color(0xff1C1F22);
  static const Color appBarBackgroundColor = Color(0xFF2F353A);
  static const Color neumorphicBackgroundColorbtnBlue = Color(0xff058DD9);
  static const Color neumorphicShadowDarkColor = Color(0xff475057);
  static const Color infoBackgroundColor = Color(0xFF1E2328);
  static const Color neumorphicShadowDarkColorEmboss = Color(0xFF424750);
  static const Color neumorphicShadowLightColor = Color(0xFF424750);
  static const Color neumorphicBorderColor = Color(0x26000000);
  static const Color neumorphicBorderColorBtnBlue = Color(0xFF10A8FC);
  static const Color kBottomAppBarColor = Color.fromARGB(255, 49, 52, 63);
  static const Color kPrimaryColor = Color(0xFF9EECD9);
  static const Color kSecondaryColor = Color.fromARGB(255, 107, 200, 252);

  /// dark version
  static const backgroundDark = Color(0xFF24272C);
  static const darkShadowDark = Color(0xFF000000);
  static const darkLabelDark = Color(0xFF7F8493);

  /// light version

  static const backgroundlight = Color(0xFFE9EAF0);
  static const lightShadowlight = Color(0xFFFFFFFF);
  static const lightLabellight = Color(0xFF757E95);

  ///text colors
  static const textGrey = Color(0xFFEBEBF5);
  static const textGrey60 = Color(0x99EBEBF5);
  static const textGrey30 = Color(0x99EBEBF5);

  /// gradient
  static const gradient = [
    Color(0xFF2FB8FF),
    Color(0xFF9EECD9),
  ];

  /// background unlockPageGradient color
  static const lockPageGradient = [
    Color(0xFF292C31),
    Color(0xFF000000),
    Color(0xFF000000),
    Color(0xFF292929),
  ];

  /// background unlockPageGradient color
  static const unlockPageGradient = [
    Color(0xFF2A2D32),
    Color(0xFF161719),
  ];

  /// background unlockPageGradient color
  static const appBarGradient = [
    Color(0xFF2A2D31),
    Color(0xFF282A2F),
  ];

  // Lock Button color
  static const lockButtonGradient = [
    Colors.transparent,
    Color(0xFF18171C),
  ];
}
