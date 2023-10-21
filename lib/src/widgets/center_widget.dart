import 'package:flutter/material.dart';

extension CenterExtension on Widget {
  ///
  /// Extension method to directly access [Center] with any widget without wrapping or with dot operator.
  ///
  Widget center({Key? key}) => Center(key: key, child: this);
}