import 'package:flutter/cupertino.dart';

extension INDWedget on Widget{
  ///  Padding(
  ///  padding:  EdgeInsets.symmetric(vertical: 8.0 , horizontal: 10),
  ///  child: const Text("Welcome"),
  /// )
  Widget pSym({double h = 0.0, double v = 0.0}) => Padding(
    padding: EdgeInsets.symmetric(horizontal: h, vertical: v),
    child: this,
  );
  ///   Padding(
  /// padding: EdgeInsets.all(10),
  ///      child: const Text("Welcome"),
  /// )
  Widget pAll({double a = 0.0}) => Padding(
    padding: EdgeInsets.all(a),
    child: this,
  );

  ///    Padding(
  ///        padding: const EdgeInsets.only(left: 8.0 , right: 0 , bottom: 9 , top: 4),
  ///        child: Text("Welcome"),
  ///     )
  Widget pO({
    double t = 0.0,
    double l = 0.0,
    double r = 0.0,
    double b = 0.0,
  }) =>
      Padding(
        padding: EdgeInsets.only(top: t, bottom: b, left: l, right: r),
        child: this,
      );


  ///  Padding(
  ///  padding: EdgeInsets.zero,
  ///    child: const Text("Welcome"),
  /// )
  Widget pZ() => Padding(padding: EdgeInsets.zero, child: this);


  Widget mAll(double m) => Container(margin: EdgeInsets.all(m), child: this);

  Widget sQ({double v = double.infinity}) => SizedBox(
    width: v,
    height: v,
    child: this,
  );

  Widget mSym({double h = 0.0, double v = 0.0}) => Container(
      margin: EdgeInsets.symmetric(horizontal: h, vertical: v), child: this);

  Widget mO({
    double l = 0.0,
    double t = 0.0,
    double r = 0.0,
    double b = 0.0,
  }) =>
      Container(
          margin: EdgeInsets.only(top: t, left: l, right: r, bottom: b),
          child: this);
}