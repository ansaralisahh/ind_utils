import 'package:flutter/cupertino.dart';

extension INDString on String {
  /// This is for Text If You Want Show Text Then
  /// "".text()  Write Like This
  ///
  /// Remember If You are Using style Property then don't Use ( fs , c , fW , wS )
  /// These Field
  Text txt(
      {double fS = 12,
      Color c = CupertinoColors.black,
      FontWeight fW = FontWeight.normal,
      TextAlign tA = TextAlign.start,
      double wS = 0.0}) {
    return Text(
      this,
      textAlign: tA,
      style: TextStyle(fontSize: fS, color: c, fontWeight: fW, wordSpacing: wS),
    );
  }

  /// Check whether a string is a number or not
  /// ```dart
  /// '123'.isNumber(); // true
  /// '123.456'.isNumber(); // true
  /// 'abc'.isNumber(); // false
  /// '123abc'.isNumber(); // false
  /// ```
  bool isNumber() {
    final isMatch = RegExp("[0-9]").hasMatch(this);
    return isMatch;
  }
  /// Returns [this] with characters in reverse order.
  ///
  /// Example:
  /// ```dart
  /// 'word'.reverse(); // 'drow'
  /// ```
  ///
  /// WARNING: This is the naive-est possible implementation, relying on native
  /// string indexing. Therefore, this method is almost guaranteed to exhibit
  /// unexpected behavior for non-ASCII characters.
  String reverse() {
    final stringBuffer = StringBuffer();
    for (var i = length - 1; i >= 0; i--) {
      stringBuffer.write(this[i]);
    }
    return stringBuffer.toString();
  }
}
