import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'package:tesla/pages/home/sy_home_page.dart';

import '../../constans/app_colors.dart';
import '../../constans/assets_path.dart';
import '../../utils/sy_public_util.dart';
import '../../widgets/sy_bottomBarIcon_widget.dart';
import '../account/sy_account_page.dart';
import '../music/sy_music_page.dart';
import '../product/sy_product_page.dart';

class SyTabBarPage extends StatefulWidget {
  const SyTabBarPage({Key? key}) : super(key: key);

  @override
  State<SyTabBarPage> createState() => _SyTabBarPageState();
}

class _SyTabBarPageState extends State<SyTabBarPage>
    with SingleTickerProviderStateMixin {
  // var userController = Get.find<DnsysUserController>();
  // final Connectivity _connectivity = Connectivity();
  // late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  // late TabController _tabController; //TabController切换页面带动画效果
  late PageController _pageController; //PageController切换页面没有动画效果

  int _currentIndex = 0;
  //生命周期变化监听
  late final AppLifecycleListener _listener;
  AppLifecycleState? _state;

  ///防止重复点击
  static const int _clickTime = 200;
  int _lastClickTime = 0;

  ///使用DnsysKeepAliveWrapper包裹，它表示 AutomaticKeepAlive 是否需要缓存当前列表项，不至于每次重新刷新ListView
  ///将 keepAlive 设为 false，则当ListView列表项滑出预渲染区域后则会销毁，否则不会销毁
  final _pageList = [
    const SyHomePage(),
    const SyMusicPage(),
    const SyProductPage(),
    const SyAccountPage()
    //const DnsysKeepAliveWrapper(isKeepAlive: true, child: DnsysMainPage()),
    // const DnsysKeepAliveWrapper(child: DnsysHospitalTrainPage()),
    // const DnsysKeepAliveWrapper(child:DnsysDeviceSearchPage()),
    // constDnsysKeepAliveWrapper(child: DnsysTrainPage()),
    // const DnsysKeepAliveWrapper(isKeepAlive: true, child:DnsysCommunityPage()),
    //const DnsysKeepAliveWrapper(isKeepAlive: true, child:DnsysAssetsPage()), //DnsysDataShowPage(), //DnsysWifiIotPage(), //, ////
    //const DnsysKeepAliveWrapper(child: DnsysAccountPage())
  ];

  //AppLifecycleListener
  void _handleTransition(String name) {
    syPrint('tabbar 从后台打开再次刷新2222');
    //syPrint('tabbar AppLifecycleListener ==>： $name');
  }

  void _handleStateChange(AppLifecycleState state) {
    syPrint('tabbar 从后台打开再次刷新1111！');
    if (state == AppLifecycleState.resumed) {
      syPrint('tabbar 从后台打开再次刷新！');
    }
    //黑白模式切换的时候，动态选择当前NavigationBarItem
    setState(() {
      _pageController.jumpToPage(_currentIndex);
    });
  }

  ///获取当前网络状态
  /* Future<void> _initConnectivityState() async {
    late ConnectivityResult result;
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      syPrint('Couldn\'t check connectivity status Error:$e');
      return;
    }
    if (!mounted) {
      return Future.value(null);
    }
    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    syPrint('connectivity result:$result');
    SyGlobal.isConnectivityResult =
        result == ConnectivityResult.none ? false : true;
    //网络状态改变时，动态更新页面显示widget
    setState(() {});
    //防止200ms内重复请求多次
    var dateTimeNowMilli = SyTimeUtil.dateTimeNowMilli();
    if (dateTimeNowMilli - _lastClickTime > _clickTime) {
      _lastClickTime = dateTimeNowMilli;
      ////网络状态改变时，动态更新用户信息
      // _getUserInfo();
    }
  }*/

  @override
  void initState() {
    super.initState();
    _state = SchedulerBinding.instance.lifecycleState;
    _listener = AppLifecycleListener(
      onShow: () => _handleTransition('show'),
      onResume: () => _handleTransition('resume'),
      onHide: () => _handleTransition('hide'),
      onInactive: () => _handleTransition('inactive'),
      onPause: () => _handleTransition('pause'),
      onDetach: () => _handleTransition('detach'),
      onRestart: () => _handleTransition('restart'),
      onStateChange: _handleStateChange,
    );
    //提示升级延迟2s
    //判断app版本是否需要升级
    /*Future.delayed(const Duration(seconds: 2), () {
      AppPlatform.initOTA();
    });*/

    //监听网络状态变化
    // _initConnectivityState();
    // _connectivitySubscription =
    //     _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
    _pageController = PageController(initialPage: _currentIndex);
    /*if (DnsysResponsiveBuilder.isMobileSw()) {
      _pageController = PageController(initialPage: _currentIndex);
    }*/
    /*_tabController = TabController(vsync: this, length: _pageList.length)
      ..addListener(() {
        setState(() {
          _currentIndex = _tabController.index;
        });
      });*/
    // _tabController.animateTo(1); //打开默认当前第几个
  }

  @override
  void dispose() {
    syPrint("tabbar_page--->dispose");
    // _tabController.dispose();
    _listener.dispose();
    _pageController.dispose();
    /*if (DnsysResponsiveBuilder.isMobileSw()) {
      _pageController.dispose();
    }*/
    // _connectivitySubscription.cancel();
    //关闭所有的Hive boxes
    // Hive.close();
    super.dispose();
  }

  List<Widget> barList = [
    SyBottomBarIconWidget(
      image: AssetImage(ImagesPath.car),
      isActive: false,
      imageSize: 40.w,
    ),
    SyBottomBarIconWidget(
      image: AssetImage(ImagesPath.lightning),
      isActive: false,
      imageSize: 40.w,
    ),
    SyBottomBarIconWidget(
      image: AssetImage(ImagesPath.ic_key),
      isActive: false,
      imageSize: 40.w,
    ),
    SyBottomBarIconWidget(
      image: AssetImage(ImagesPath.person),
      isActive: false,
      imageSize: 40.w,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: AppColors.unlockPageGradient,
      ),
      extendBody:
          true, //如果为 true，并且指定了 BottomNavigationBar 或 permanentFooterButtons，则主体将延伸到 Scaffold 的底部，而不是仅延伸到 BottomNavigationBar 或 permanentFooterButtons 的顶部
      body: SafeArea(
        child: Column(
          children: [
            //TODO 顶部添加view
            Expanded(
              child: PageView(
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(), //禁止滑动
                children: _pageList,
              ),
            ),
            /*SyGlobal.isConnectivityResult
                  ? Container()
                  : Container(
                      alignment: Alignment.center,
                      color: Colors.red,
                      height: 100.h * .6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DnsysIconAndTextWidget(
                            textColor: Colors.white,
                            isRow: true,
                            icon: Icons.info_outline_rounded,
                            text: SyMultiLanguage.multiLanguage()
                                .sy_network_status_fail,
                            iconColor: Colors.white,
                          )
                        ],
                      ),
                    ),*/
          ],
        ),
      ),
      /*floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 20.w),
        child: FloatingActionButton(
          backgroundColor: Colors.transparent,
          onPressed: () {},
          child: SyIconBtnWidget(
            image: AssetImage(ImagesPath.add),
            onPressed: () {},
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,*/
      bottomNavigationBar: CurvedNavigationBar(
        items: barList,
        color: Colors.black54,
        buttonBackgroundColor: Colors.black54,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        letIndexChange: (index) => true,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            _pageController.jumpToPage(_currentIndex);
            syPrint('page:${_pageController.initialPage} index:$_currentIndex');
          });
        },
      ),
    );
  }
}
