import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tesla/pages/home/sy_home_page.dart';
import 'package:tesla/pages/sy_main_page.dart';

import '../pages/account/sy_account_page.dart';
// import '../pages/chatGPT/sy_chatgpt_page.dart';
import '../pages/home/sy_charge_page.dart';
import '../pages/home/sy_climate_page.dart';
import '../pages/music/sy_music_page.dart';
import '../pages/product/sy_cardDetail_page.dart';
import '../pages/tabbar/dnsys_tabbar_page.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver();

class SyRoute {
  static const String initial = "/";
  static const String main = "/main-page";
  static const String home = "/home-page";
  static const String musicPage = "/music-page";
  // static const String chatGPTPage = "/chatGPT-page";
  static const String climate = "/climate-page";
  static const String charge = "/charge-page";
  static const String account = "/account-page";
  static const String cardDetail = "/cardDetail-page";

  static String getInitial() => initial;
  static String getMain() => main;
  static String getHome() => home;
  static String getMusic() => musicPage;
  // static String getChatGPTPage() => chatGPTPage;
  static String getClimate() => climate;
  static String getCharge() => charge;
  static String getAccount() => account;
  static String getCardDetailPage() => cardDetail;

  static List<GetPage> routes = [
    GetPage(
        name: initial,
        page: () => const SyTabBarPage(),
        transition: Transition.fadeIn),
    GetPage(
        name: main,
        page: () => const SyMainPage(),
        transition: Transition.fadeIn),
    GetPage(
        name: home,
        page: () => const SyHomePage(),
        transition: Transition.upToDown),
    GetPage(
        name: musicPage,
        page: () => const SyMusicPage(),
        transition: Transition.fadeIn),
    // GetPage(
    //     name: chatGPTPage,
    //     page: () => const SyChatGPTPage(),
    //     transition: Transition.fadeIn),
    GetPage(
        name: climate,
        page: () => const SyClimatePage(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: charge,
        page: () => const SyChargePage(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: account,
        page: () => const SyAccountPage(),
        transition: Transition.fadeIn),
    GetPage(
        name: cardDetail,
        page: () => SyCardDetailPage(),
        transition: Transition.rightToLeftWithFade),

    /*GetPage(
        name: aboutPage,
        page: () => const DnsysAboutPage(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: createCommunityPage,
        page: () => const DnsysCommunityCreatePage(),
        transition: Transition.downToUp),
    */
  ];
}
