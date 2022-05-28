import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class AnimateToPage extends PageRouteBuilder {
  final Widget widget;
  AnimateToPage({required this.widget})
      : super(
            transitionDuration: const Duration(seconds: 1),
            transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secAnimation, Widget child) {
              animation = CurvedAnimation(parent: animation, curve: Curves.decelerate);
              return ScaleTransition(
                scale: animation,
                alignment: Alignment.centerRight,
                child: child,
              );
            },
            pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secAnimation) {
              return widget;
            });
}
