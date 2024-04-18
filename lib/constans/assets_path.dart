import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppTextStyles {
  static const fontFamily = "SFProDisplay";
  static const _sfProDisplay = "SFProDisplay";

  static const sfProDisplay17 = TextStyle(
    fontFamily: _sfProDisplay,
    fontSize: 17,
    fontWeight: FontWeight.w600,
  );
  static const sfProDisplay40 = TextStyle(
    fontFamily: _sfProDisplay,
    fontSize: 40,
    fontWeight: FontWeight.w700,
  );
  static const sfProDisplay28 = TextStyle(
    fontFamily: _sfProDisplay,
    fontSize: 28,
    fontWeight: FontWeight.w700,
  );
  static const sfProDisplay20 = TextStyle(
    fontFamily: _sfProDisplay,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static const sfProDisplay13 = TextStyle(
    fontFamily: _sfProDisplay,
    fontSize: 13,
    fontWeight: FontWeight.w400,
  );
  static const sfProDisplay34 = TextStyle(
    fontFamily: _sfProDisplay,
    fontSize: 34,
    fontWeight: FontWeight.w400,
  );
  static const sfProDisplay13w600 = TextStyle(
    fontFamily: _sfProDisplay,
    fontSize: 13,
    fontWeight: FontWeight.w600,
  );
}

class GifPath {
  static const _folderPath = "assets/gif";
  static String ripple = "$_folderPath/ripple.gif";
  static String spinner = "$_folderPath/spinner.gif";
}

class ImagesPath {
  static const _folderPath = "assets/images";
  static String teslaDark = "$_folderPath/img_tesla_dark.png";
  static String teslaWhite = "$_folderPath/img_tesla_white.png";
  static String teslaLeft = "$_folderPath/img_tesla_left.png";
  static String teslaRight = "$_folderPath/img_tesla_right.png";
  static String teslaGrey = "$_folderPath/img_tesla_grey.png";
  static String teslaFront = "$_folderPath/img_tesla_front.png";
  static String add = "$_folderPath/ic_add.png";
  static String auto = "$_folderPath/ic_auto.png";
  static String car = "$_folderPath/ic_car.png";
  static String coursor = "$_folderPath/ic_coursor.png";
  static String fan = "$_folderPath/ic_fan.png";
  static String heat = "$_folderPath/ic_heat.png";
  static String ic_key = "$_folderPath/ic_key.png";
  static String lightning = "$_folderPath/ic_lightning.png";
  static String person = "$_folderPath/ic_person.png";
  static String km = "$_folderPath/km187.png";
}

class backGroundImagesPath {
  static const _folderPath = "assets/background";
  static const itemBg01 = '$_folderPath/item_bg_01.png';
  static const itemBg02 = '$_folderPath/item_bg_02.png';
  static const itemBg03 = '$_folderPath/item_bg_03.png';
}

class ImagesLottiesPath {
  static const _folderPath = "assets/lotties";
  static const itemForwardLottieFile = "$_folderPath/item_forward.json";
  static const itemChatGPTLottieFile = "$_folderPath/item_chatgpt.json";
  static const itemMeLottieFile = "$_folderPath/item_me.json";
}

class ImagesSplashScreenPath {
  static const _folderPath = "assets/splash_screen";
  static const itemSplash = "$_folderPath/item_splash.png";
}

class SvgIcon {
  static const _folderPath = "assets/svg";
  static SvgPicture car_1 = SvgPicture.asset("$_folderPath/svg_car_1.svg");
  static SvgPicture car_2 = SvgPicture.asset("$_folderPath/svg_car_2.svg");
  static SvgPicture car_3 = SvgPicture.asset("$_folderPath/svg_car_3.svg");
  static SvgPicture carWindow =
      SvgPicture.asset("$_folderPath/svg_car_window.svg");
  static SvgPicture charge = SvgPicture.asset("$_folderPath/svg_charge.svg");
  static SvgPicture chevronBottom =
      SvgPicture.asset("$_folderPath/svg_chevron_bottom.svg");
  static SvgPicture chevronLeft =
      SvgPicture.asset("$_folderPath/svg_chevron_left.svg");
  static SvgPicture chevronRight =
      SvgPicture.asset("$_folderPath/svg_chevron_right.svg");
  static SvgPicture chevronTop =
      SvgPicture.asset("$_folderPath/svg_chevron_top.svg");
  static SvgPicture cursor = SvgPicture.asset("$_folderPath/svg_cursor.svg");
  static SvgPicture location =
      SvgPicture.asset("$_folderPath/svg_location.svg");
  static SvgPicture location_2 =
      SvgPicture.asset("$_folderPath/svg_location_2.svg");
  static SvgPicture locationCharge =
      SvgPicture.asset("$_folderPath/svg_location_charge.svg");
  static SvgPicture lock = SvgPicture.asset("$_folderPath/svg_lock.svg");
  static SvgPicture lockGreen =
      SvgPicture.asset("$_folderPath/svg_lock_green.svg");
  static SvgPicture off = SvgPicture.asset("$_folderPath/svg_off.svg");
  static SvgPicture person = SvgPicture.asset("$_folderPath/svg_person.svg");
  static SvgPicture plus = SvgPicture.asset("$_folderPath/svg_plus.svg");
  static SvgPicture settings =
      SvgPicture.asset("$_folderPath/svg_settings.svg");
  static SvgPicture snow = SvgPicture.asset("$_folderPath/svg_snow.svg");
  static SvgPicture speed = SvgPicture.asset("$_folderPath/svg_speed.svg");
  static SvgPicture unlock = SvgPicture.asset("$_folderPath/svg_unlock.svg");
  static SvgPicture vent = SvgPicture.asset("$_folderPath/svg_vent.svg");
  static SvgPicture wind = SvgPicture.asset("$_folderPath/svg_wind.svg");
  static SvgPicture alarm = SvgPicture.asset("$_folderPath/svg_alarm.svg");
  static SvgPicture windWater =
      SvgPicture.asset("$_folderPath/svg_wind_water.svg");
  static SvgPicture check = SvgPicture.asset("$_folderPath/check.svg");
}
