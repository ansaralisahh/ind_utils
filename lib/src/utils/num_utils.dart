import 'package:flutter/material.dart';

extension AdobNumExtension on num {
  /// Define of width of Any Widgets
  Widget get wBox => SizedBox(
        width: toDouble(),
      );

  /// Define of height of Any Widgets
  Widget get hBox => SizedBox(
        height: toDouble(),
      );

  /// Define of height and width of Any Widgets
  Widget get squareBox => SizedBox(
        height: toDouble(),
        width: toDouble(),
      );
}
