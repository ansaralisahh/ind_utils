import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_utils.dart';

extension GetStringUtils on String {
  /// Check Is URL or not
  ///
  bool get isURL => AppUtils.isURL(this);

  /// Check Is Number or not
  ///
  bool get isNumber => AppUtils.isNumber(this);

  /// Check is Email or not
  ///
  bool get isEmail => AppUtils.isEmail(this);

  /// check value is Empty or Not
  ///
  bool get isEpt => trim().isEmpty;

  /// This is for text
  /// if you want show text then
  /// simple
  /// "".text()
  /// write like this
  Text txt(
      {double fs = 12,
      Color c = CupertinoColors.black,
      FontWeight fw = FontWeight.normal,
      double wS = 0.0}) {
    return Text(
      this,
      style: TextStyle(fontSize: fs, color: c, fontWeight: fw, wordSpacing: wS),
    );
  }
}
