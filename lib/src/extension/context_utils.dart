import 'package:flutter/material.dart';

extension Context on BuildContext {
  Size get mediaQuerySize => MediaQuery.of(this).size;
  double get h => mediaQuerySize.height;
  double get w => mediaQuerySize.width;
  /// context.showMessage(text:"Show Message")
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> message({
    String text = "",
    TextStyle? style,
    double? width,
    double? elevation,
    bool? showCloseIcon,
    Duration? duration,
    void Function()? onVisible,
    EdgeInsetsGeometry? padding,
    ShapeBorder? shape,
    Animation<double>? animation,
    SnackBarAction? action,
    EdgeInsetsGeometry? margin,
    Color bgColor = Colors.black,
    TextOverflow overflow = TextOverflow.fade,
    TextAlign textAlign = TextAlign.start,
  }) {
    return ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(
        text,
        style: style,
        textAlign: textAlign,
        softWrap: true,
        overflow: overflow,
      ),
      backgroundColor: bgColor,
      width: width,
      padding: padding,
      elevation: elevation,
      margin: margin,
      action: action,
      duration: duration ?? const Duration(seconds: 1),
      shape: shape,
      animation: animation,
      onVisible: onVisible,
      showCloseIcon: showCloseIcon,
    ));
  }

  void back() {
    return Navigator.pop(this, false);
  }

  Future<void> goTo(
          {required BuildContext context,
          required Widget page,
          bool maintainState = true}) async =>
      await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page,
            maintainState: maintainState,
          ));

  Future<void> goToPushReplacement(
          {required BuildContext context,
          required Widget page,
          bool maintainState = true}) async =>
      await Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => page,
            maintainState: maintainState,
          ));
}
