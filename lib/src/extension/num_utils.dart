import 'dart:math';
import 'package:flutter/material.dart';
extension INDNum on num {
  /// Define of width of Any Widgets
  /// SizedBox(
  ///   width: 50,
  /// )
  /// Use like this in UI 50.wBox,
  Widget get wBox => SizedBox(
        width: toDouble(),
      );

  /// SizedBox(
  ///   height: 50,
  /// )
  /// Define of height of Any Widgets
  /// 50.hBox, Use Like This
  Widget get hBox => SizedBox(
        height: toDouble(),
      );

  /// SizedBox(
  ///   height: 50,
  ///   width: 50,
  /// )
  /// Define of height of Any Widgets
  /// 50.sqBox, Use Like This
  Widget get sqBox => SizedBox(
        height: toDouble(),
        width: toDouble(),
      );

  /// Square Value and also increase power of any value
  /// You can use like this
  ///     print("10*10 = ${10.powValue()}");
  ///     print("10*10*10 = ${10.powValue(v:3)}");
  ///     print("10*10*10*10*10*10*10*10*10*10 = ${10.powValue(v:10)}");
  ///     also use on double value
  ///     print("10.5 = ${10.5.powValue(v:3)}"); print = 1157.625
  num powValue({num v = 2}) {
    return pow(this, v);
  }

  /// Change value of Meter to Feet of Any Number
  ///    print("10 ${10.mToFeet()}");
  double mToFeet() {
    return this * 3.28084;
  }

  /// Change value of Feet to Meter of Any Number
  ///     print("10 ${10.fToMeter()}");
  double fToMeter() {
    return this / 3.28084;
  }

/// Get percentage of any number
  double getPercentage(num? p) {
    if (p != null) {
      return (this * p) / 100;
    }
    return 0;
  }


  String padLeft(int width, [String padding = ' ']) =>
      toString().padLeft(width, padding);

  /// num long
  int get length => toString().length;

  /// Returns number of digits in this number
  int get numberOfDigits => toString().length;

  /// Returns if the number is even
  bool get isEven => this % 2 == 0;

  /// Returns if the number is odd
  bool get isOdd => this % 2 != 0;

  /// Returns if the number is positive
  bool get isPositive => this > 0;

  /// Returns if the number is negative
  bool get isNegative => this < 0;


}

extension INDInt on int{
  Duration microseconds() {
    return Duration(microseconds: this);
  }

  Duration milliseconds() {
    return Duration(milliseconds: this);
  }

  Duration minutes() {
    return Duration(minutes: this);
  }

  Duration seconds() {
    return Duration(seconds: this);
  }

  Duration days() {
    return Duration(days: this);
  }

  Duration hours() {
    return Duration(hours: this);
  }
}
extension INDBoxConstraints on BoxConstraints {
  bool get isTablet => maxWidth > 730;
  bool get isDesktop => maxWidth > 1200;
  bool get isMobile => !isTablet && !isDesktop;
}
