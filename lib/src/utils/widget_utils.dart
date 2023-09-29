import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension WidgetPadding on Widget {
  Widget pSym({double h = 0.0, double v = 0.0}) => Padding(
        padding: EdgeInsets.symmetric(horizontal: h, vertical: v),
        child: this,
      );

  Widget wCenter() {
    return Center(
      child: this,
    );
  }

  Widget pAll({double a = 0.0}) => Padding(
        padding: EdgeInsets.all(a),
        child: this,
      );

  Widget pOnly({
    double t = 0.0,
    double l = 0.0,
    double r = 0.0,
    double b = 0.0,
  }) =>
      Padding(
        padding: EdgeInsets.only(top: t, bottom: b, left: l, right: r),
        child: this,
      );

  Widget pZ() =>Padding(padding: EdgeInsets.zero, child: this);

  Widget hBox({double h = 0.0}) => SizedBox(
        height: h,
      );

  Widget oTab(VoidCallback? onTap, {Key? key}) {
    return GestureDetector(
      key: key,
      onTap: () => onTap,
      child: this,
    );
  }
}