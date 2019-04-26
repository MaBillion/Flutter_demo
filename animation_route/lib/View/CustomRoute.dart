import 'package:flutter/material.dart';

class CustomRoute extends PageRouteBuilder {
    final Widget widget;

    CustomRoute(this.widget)
    :super(
        transitionDuration: const Duration(seconds: 1),
        pageBuilder: (
          BuildContext context,
          Animation<double> animation1,
          Animation<double> animation2  
        ){
            return widget;
        },
        transitionsBuilder: (
            BuildContext centext,
            Animation<double> animation1,
            Animation<double> animation2,
            Widget child
        ){
            // 渐隐渐现
            // return FadeTransition(
            //     opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
            //         parent: animation1,
            //         curve: Curves.ease
            //     )),
            //     child: child
            // );

            // 缩放
            // return ScaleTransition(
            //     scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
            //         parent: animation1,
            //         curve: Curves.easeOutCubic
            //     )),
            //     child: child,
            // );

            // 缩放加旋转
            // return ScaleTransition(
            //     scale: Tween(
            //         begin: 0.0,
            //         end: 1.0
            //     ).animate(CurvedAnimation(
            //         curve: Curves.easeInToLinear,
            //         parent: animation1
            //     )),
            //     child: RotationTransition(
            //         turns: Tween(begin: 0.0, end: 1.0).animate(
            //             CurvedAnimation(
            //                 parent: animation1,
            //                 curve: Curves.easeInOutQuad
            //             )
            //         ),
            //         child: child
            //     ),
            // );

            // 滑动
            return SlideTransition(
                position: Tween<Offset>(
                    begin: Offset(-1.0, 0.0),
                    end: Offset(0.0, 0.0)
                ).animate(
                    CurvedAnimation(
                        parent: animation1,
                        curve: Curves.easeInOutExpo
                    )
                ),
                child: child,
            );
        }
    );
}