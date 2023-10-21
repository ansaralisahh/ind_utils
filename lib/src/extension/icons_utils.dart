import 'package:flutter/material.dart';

extension IconsUtils on IconData {
  Widget icon(
      {double iS = 12,
      double? fill,
      double? optS,
      double? w,
      Color iC = Colors.black}) {
    return Icon(
      this,
      size: iS,
      color: iC,
      fill: fill,
      weight: w,
      opticalSize: optS,
    );
  }

  Widget iconButton(
      {double iS = 12,
      double? fill,
      double? optS,
      ButtonStyle? bS,
      Key? key,
      EdgeInsetsGeometry? padding,
      required void Function()? pressed,
      double? w,
      Color iC = Colors.black}) {
    return IconButton(
        style: bS,
        key: key,
        padding: padding,
        onPressed: pressed,
        icon: Icon(
          this,
          size: iS,
          color: iC,
          fill: fill,
          weight: w,
          opticalSize: optS,
        ));
  }
}
