import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenUtilBase<T> extends StatelessWidget {
  static const double baseWidth = 360;
  static const double baseHeight = 690;

  const ScreenUtilBase({
    super.key,
    required this.buildContext,
    required this.widget,
  });

  final BuildContext buildContext;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(baseWidth, baseHeight),
        builder: (buildContext, w) => widget);
  }
}
