import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

import '../../constans/app_colors.dart';
import '../../constans/assets_path.dart';
import '../../utils/sy_app_theme.dart';
import '../../utils/sy_multi_language.dart';
import '../../utils/sy_public_util.dart';
import '../../widgets/sy_appBarBtn_widget.dart';
import '../../widgets/sy_text_widget.dart';
import 'model/sy_account_setting_model.dart';

class SyAccountPage extends StatefulWidget {
  const SyAccountPage({super.key});

  @override
  State<SyAccountPage> createState() => _SyAccountPageState();
}

class _SyAccountPageState extends State<SyAccountPage> {
  final List<SyAccountSettingModel> _listItems = [
    SyAccountSettingModel(
        //onTap: () => SyNavigator.toNamed(SyRoute.getChatGPTPage()),
        iconDataLeft: Icons.chat,
        title: 'chatGPT', //SyMultiLanguage.multiLanguage().sy_tcp_device_list,
        des: '',
        iconDataRight: Icons.keyboard_arrow_right),
    /*DnsysAccountSettingModel(
        onTap: () => SyNavigator.toNamed(DnsysRoute.getAboutPage()),
        iconDataLeft: Icons.info_rounded,
        title: SyMultiLanguage.multiLanguage().sy_about_us,
        des: '',
        iconDataRight: Icons.keyboard_arrow_right),*/
  ];
  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: AppColors.unlockPageGradient,
      ),
      appBar: AppBar(
        title: SyTextWidget(
          text: SyMultiLanguage.multiLanguage().sy_mine_name,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
        toolbarHeight: lerpDouble(5, 14, 10),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: AppColors.appBarGradient,
            ),
          ),
        ),
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
      extendBody:
          true, //如果为 true，并且指定了 BottomNavigationBar 或 permanentFooterButtons，则主体将延伸到 Scaffold 的底部，而不是仅延伸到 BottomNavigationBar 或 permanentFooterButtons 的顶部
      body: /*Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    LocalGovernment.func(
                        context, LocalGovernment.english.locale);
                  },
                  color: Colors.orangeAccent,
                  minWidth: 70,
                  child: SyTextWidget(
                    text: 'English',
                  ),
                ),
                const SizedBox(width: 5),
                MaterialButton(
                  onPressed: () {
                    LocalGovernment.func(
                        context, LocalGovernment.russia.locale);
                  },
                  color: Colors.redAccent,
                  minWidth: 70,
                  child: SyTextWidget(
                    text: 'Russia',
                  ),
                ),
                const SizedBox(width: 5),
                CupertinoButton(
                  onPressed: () {
                    LocalGovernment.func(context, LocalGovernment.uzbek.locale);
                  },
                  color: Colors.blueAccent,
                  minSize: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SyTextWidget(
                    text: 'Uzbek',
                  ),
                ),
              ],
            ),
          ],
        ),
      )*/
          SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: EdgeInsets.all(20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /*DnsysHeadWidget(
                imageUrl: null,
                gender: 1,
                onTap: () {
                  //SyNavigator.toNamed(DnsysRoute.getAccountInforPage());
                },
              ),*/
                      Container(
                        color: Colors.transparent,
                        height: 100.w,
                        child: Lottie.asset(ImagesLottiesPath
                            .itemMeLottieFile), //Lottie.network('https://assets7.lottiefiles.com/packages/lf20_6e0qqtpa.json'),  Lottie.asset('assets/lottiefiles/angel.zip'),
                      ),
                      SizedBox(height: 20.w),
                      SyTextWidget(
                          text:
                              '狗蛋儿', //widget.userController.userModel?.nickname ?? "",
                          fontSize: 25.sp,
                          fontWeight: AppTheme.semiBold),
                      SizedBox(height: 10.w),
                      /*widget.userController.userModel?.signature != null
                  ? DnsysTextWidget(
                      text: widget.userController.userModel?.signature ?? "",
                      fontSize: Dimensions.f10 * 2.4,
                      fontWeight: AppTheme.medium)
                  : Container(),*/
                      SyTextWidget(
                          text:
                              'Talk is cheap, show me the code.', //widget.userController.userModel?.signature ?? "",
                          fontSize: 23.sp,
                          fontWeight: AppTheme.medium),
                      SizedBox(height: 25.w),
                      _buildBottomListView(_listItems),
                    ],
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBottomListView(List<SyAccountSettingModel> listItems) {
    List<Widget> widgetTemp = [];
    for (var item in listItems) {
      widgetTemp.add(_itemWidget(item.onTap, item.iconDataLeft!, item.title!,
          item.iconDataRight!, item.des!));
    }
    return Container(
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.all(Radius.circular(10.r))),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(children: [...widgetTemp]),
      ),
    );
  }

  Widget _itemWidget(Function()? onTap, IconData iconDataLeft, String title,
      IconData iconDataRight, String detailString) {
    syPrint('change theme color==>');
    var currentIsDark = Theme.of(context).brightness == Brightness.dark;
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 0),
                blurRadius: 0.1,
                color:
                    currentIsDark ? Theme.of(context).cardColor : Colors.white,
              ),
            ]),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.w),
          child: ListTile(
            iconColor: currentIsDark ? Colors.white : Colors.black,
            contentPadding: const EdgeInsets.all(0),
            leading: Icon(
              iconDataLeft,
              size: 40.r,
            ),
            //title 和 leading 之间默认间距是 40，我们可以使用 minLeadingWidth 设置
            minLeadingWidth: 5.w,
            title: SyTextWidget(
                color: currentIsDark ? Colors.white : Colors.black,
                text: title,
                fontSize: 28.sp,
                fontWeight: AppTheme.medium),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SyTextWidget(
                    color: currentIsDark ? Colors.white : Colors.black,
                    text: detailString,
                    fontSize: 24.sp,
                    fontWeight: AppTheme.medium),
                Icon(iconDataRight)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
