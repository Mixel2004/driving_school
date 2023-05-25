import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ScreenUtil {
  static bool isLoaded = false;
  static late double width;
  static late double height;
  static late double statusBarHeight;
  static late double bottomBarHeight;
  static late double safeAreaHeight;
  static late double safeAreaWidth;
  static late double safeAreaHorizontalPadding;
  static late double safeAreaVerticalPadding;

  static init(BuildContext context) {
    if (isLoaded) return;
    isLoaded = true;
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    statusBarHeight = MediaQuery.of(context).padding.top;
    bottomBarHeight = MediaQuery.of(context).padding.bottom;
    safeAreaHeight = height - statusBarHeight - bottomBarHeight;
    safeAreaWidth = width;
    safeAreaHorizontalPadding = 0;
    safeAreaVerticalPadding = statusBarHeight;
  }
}
