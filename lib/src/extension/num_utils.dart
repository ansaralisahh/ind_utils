import 'dart:math';
import 'package:flutter/material.dart';

extension INDNum on num {
  Duration get microseconds => Duration(microseconds: round());

  Duration get ms => (this * 1000).microseconds;

  Duration get milliseconds => (this * 1000).microseconds;

  Duration get seconds => (this * 1000 * 1000).microseconds;

  Duration get minutes => (this * 1000 * 1000 * 60).microseconds;

  Duration get hours => (this * 1000 * 1000 * 60 * 60).microseconds;

  Duration get days => (this * 1000 * 1000 * 60 * 60 * 24).microseconds;

  /// Space between two widget horizontally
  Widget get wBox => SizedBox(
        width: toDouble(),
      );

  /// Space between two widget Vertical
  Widget get hBox => SizedBox(
        height: toDouble(),
      );

  Widget get sqBox => SizedBox(
        height: toDouble(),
        width: toDouble(),
      );

  /// Square Value and also increase power of any value
  num powValue({num v = 2}) {
    return pow(this, v);
  }

  /// Change value of Meter to Feet of Any Number
  double mToFeet() {
    return this * 3.28084;
  }

  /// Change value of Feet to Meter of Any Number
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

extension INDBoxConstraints on BoxConstraints {
  /// Check is it Tablet
  bool get isTablet => maxWidth > 730;
  /// Check is it isDesktop
  bool get isDesktop => maxWidth > 1200;
  /// Check is it isMobile
  bool get isMobile => !isTablet && !isDesktop;
}
