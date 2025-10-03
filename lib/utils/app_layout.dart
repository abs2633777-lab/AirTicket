import 'package:flutter/cupertino.dart';

class AppLayout {
  static getSize(BuildContext context) {
    final mediaQuery = MediaQuery.maybeOf(context);
    return mediaQuery?.size ?? const Size(390, 844);
  }

  static getScreenHeight(BuildContext context) {
    return getSize(context).height;
  }

  static getScreenWidth(BuildContext context) {
    return getSize(context).width;
  }

  static getHeight(BuildContext context, double pixels) {
    double x = getScreenHeight(context) / pixels;
    return getScreenHeight(context) / x;
  }

  static getWidth(BuildContext context, double pixels) {
    double x = getScreenWidth(context) / pixels;
    return getScreenWidth(context) / x;
  }
}
