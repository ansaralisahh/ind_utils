import 'package:flutter/material.dart';

extension INDWedget on Widget {
  ///  GestureDetector(
  ///
  ///       onTap: (){
  ///     Navigator.push(context, MaterialPageRoute(builder: (_)=> NextPage())
  ///     )
  ///  },
  ///
  ///    child: Text("Welcome")
  ///  )
  ///
  ///    "Welcome".text().oTab(() {
  ///       Navigator.push(context, MaterialPageRoute(builder: (_)=> NextPage()));
  ///     })
  Widget onTab(VoidCallback? onTap, {Key? key}) {
    return GestureDetector(
      key: key,
      onTap: onTap,
      child: this,
    );
  }

  /// Wrap The widget With Center
  ///
  ///   "Welcome In IndianCreator".text().c();
  ///
  /// Center(
  ///   child: Text("Welcome In IndianCreator"),
  /// )
  ///

  Widget card(
      {Key? key, double? e, Color? color, Color? shadowC, ShapeBorder? shape}) {
    return Card(
      key: key,
      elevation: e,
      color: color,
      shape: shape,
      shadowColor: shadowC,
      child: this,
    );
  }

  Widget align({Alignment a = Alignment.centerLeft, double? wF, double? hF}) =>
      Align(
        alignment: a,
        widthFactor: wF,
        heightFactor: hF,
        child: this,
      );

  Widget ex({int f = 1}) => Expanded(flex: f, child: this);

  Widget safeArea(
          {bool l = true, bool r = true, bool t = true, bool b = true}) =>
      SafeArea(left: l, right: r, top: t, bottom: b, child: this);
}
