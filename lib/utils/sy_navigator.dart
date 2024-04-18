import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SyNavigator {
  ///打开一个新路由，跟原生pushNamed一样效果
  static Future<T?>? toNamed<T>(String routeName, {dynamic arguments}) {
    return Get.toNamed<T>(routeName, arguments: arguments);
  }

  ///清除之前的页面路由，并替换新的页面
  static Future<T?>? offAllNamed<T>(String routeName, {dynamic arguments}) {
    return Get.offAllNamed(routeName, arguments: arguments);
  }

  ///删除当前路由，并替换新的页面
  static Future? offNamed(String routeName, {dynamic arguments}) {
    return Get.offNamed(routeName, arguments: arguments);
  }

  static Future? offPage(Widget page, {dynamic arguments}) {
    return Get.off(page, arguments: arguments);
  }

  static Future? toPage(Widget page, {dynamic arguments}) {
    return Get.to(page, arguments: arguments);
  }

  ///退到某个页面再打开页面
  static Future? offNamedUntil(String toName, String withName,
      {dynamic arguments}) {
    return Get.offNamedUntil(
        toName,
        ModalRoute.withName(
          withName,
        ),
        arguments: arguments);
  }

  static until(String withName) {
    Get.until(ModalRoute.withName(
      withName,
    ));
  }

  static Future pushTransparentPage(BuildContext? context, Widget page,
      {String? pageName, Route? route, int? direction}) async {
    if (context == null) return;
    debugPrint('Navigator : pushTransparentPage => $pageName');
    Route? builder;
    if (direction != null) {
      builder = SySlideTransitionRoute(page, direction: direction);
    } else {
      if (route == null) {
        builder = SyTransparentRoute(builder: (ctx) => page);
      }
    }
    return Navigator.push(
      context,
      route ?? builder!,
    );
  }

  static void pop<T extends Object>([T? result]) {
    return Get.back(result: result);
  }

  static Future<T?> showCommonDialog<T>(
    Widget dialog, {
    bool barrierDismissible = false,
  }) {
    return Get.generalDialog<T>(
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return dialog;
      },
    );
  }

/*
  static Future<T?>? toBottomPage<T>(Widget page, {dynamic arguments}) {
    return Get.to<T>(
        DialogBottomLayout(
          page,
          opaque: true,
        ),
        arguments: arguments,
        opaque: false,
        fullscreenDialog: true,
        transition: Transition.downToUp);
  }

  static Future<T?> showBottomDialog<T>(
    Widget dialog, {
    bool barrierDismissible = false,
  }) {
    return Get.generalDialog<T>(
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return DialogBottomLayout(dialog);
      },
    );
  }

  static Future<T?> showBottomItemsDialog<T>(
    List<DialogBottomWidgetItem> list, {
    bool barrierDismissible = false,
  }) {
    return showBottomDialog(DialogBottomWidget(list));
  }*/
}

class SySlideTransitionRoute extends PageRouteBuilder {
  static const DIRECTION_LEFT = 0;
  static const DIRECTION_BOTTOM = 1;
  static const DIRECTION_RIGHT = 2;
  static const DIRECTION_TOP = 3;

  final Widget widget;
  final int direction;

  @override
  bool get opaque => false;

  @override
  Color? get barrierColor => null;

  @override
  String? get barrierLabel => null;

  @override
  bool get maintainState => true;

  SySlideTransitionRoute(this.widget, {this.direction = DIRECTION_LEFT})
      : super(
            // 设置过度时间
            transitionDuration: const Duration(milliseconds: 250),
            // 构造器
            pageBuilder: (
              // 上下文和动画
              BuildContext context,
              Animation<double> animaton1,
              Animation<double> animaton2,
            ) {
              return widget;
            },
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animaton1,
              Animation<double> animaton2,
              Widget child,
            ) {
              // 需要什么效果把注释打开就行了
              // 渐变效果
              // return FadeTransition(
              //   // 从0开始到1
              //   opacity: Tween(begin: 0.0,end: 1.0)
              //       .animate(CurvedAnimation(
              //     // 传入设置的动画
              //     parent: animaton1,
              //     // 设置效果，快进漫出   这里有很多内置的效果
              //     curve: Curves.fastOutSlowIn,
              //   )),
              //   child: child,
              // );

              // 缩放动画效果
              // return ScaleTransition(
              //   scale: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(
              //     parent: animaton1,
              //     curve: Curves.fastOutSlowIn
              //   )),
              //   child: child,
              // );

              // 旋转加缩放动画效果
              // return RotationTransition(
              //   turns: Tween(begin: 0.0,end: 1.0)
              //   .animate(CurvedAnimation(
              //     parent: animaton1,
              //     curve: Curves.fastOutSlowIn,
              //   )),
              //   child: ScaleTransition(
              //     scale: Tween(begin: 0.0,end: 1.0)
              //     .animate(CurvedAnimation(
              //       parent: animaton1,
              //       curve: Curves.fastOutSlowIn
              //     )),
              //     child: child,
              //   ),
              // );

              // 左右滑动动画效果
              return SlideTransition(
                position: Tween<Offset>(
                        // 设置滑动的 X , Y 轴
                        begin: Offset(
                            (DIRECTION_LEFT == direction)
                                ? -1.0
                                : (DIRECTION_RIGHT == direction)
                                    ? 1
                                    : 0,
                            (DIRECTION_BOTTOM == direction) ? 1.0 : 0),
                        end: const Offset(0.0, 0.0))
                    .animate(
                        CurvedAnimation(parent: animaton1, curve: Curves.ease)),
                child: child,
              );
            });
}

class SyTransparentRoute<T> extends PageRoute<T> {
  SyTransparentRoute({
    required this.builder,
    RouteSettings? settings,
  }) : super(settings: settings, fullscreenDialog: false);

  final WidgetBuilder builder;

  @override
  bool get opaque => false;

  @override
  Color? get barrierColor => null;

  @override
  String? get barrierLabel => null;

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 300);

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    final result = builder(context);
    return Semantics(
      scopesRoute: true,
      explicitChildNodes: true,
      child: FadeTransition(
        opacity: animation,
        child: result,
      ),
    );
  }
}
