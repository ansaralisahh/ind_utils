import 'package:flutter/material.dart';
import 'package:ind_utils/ind_utils.dart';
import 'package:ind_utils/src/widgets/widget_utils.dart';

class INDWidgets extends StatelessWidget {
  const INDWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          /// don't use like this
          ///  Padding(
          ///  padding:  EdgeInsets.symmetric(vertical: 8.0 , horizontal: 10),
          ///  child: const Text("Welcome"),
          /// )
          /// User Like this
          Icons.add.icon(),
          const Text("Welcome").pSym(v: 10, h: 20),

          /// don't use like this
          ///    Padding(
          ///        padding: const EdgeInsets.only(left: 8.0 , right: 0 , bottom: 9 , top: 4),
          ///        child: Text("Welcome"),
          ///     )
          /// use like this
          const Text("Welcome").pO(b: 10, l: 10, r: 10, t: 10),

          ///  Don't use like this
          ///   Padding(
          /// padding: EdgeInsets.all(10),
          ///      child: const Text("Welcome"),
          /// )
          ///  Use Like This
          const Text("Welcome").pAll(a: 10),

          ///  Don't use like this
          ///  Padding(
          ///  padding: EdgeInsets.zero,
          ///    child: const Text("Welcome"),
          /// )
          /// use like this
          const Text("Welcome").pZ(),

          /// Don't use like this if you wanna space between two widgets
          /// SizedBox(
          ///   height: 50,
          /// )
          /// Use like this
          50.hBox,

          /// Don't use like this if you wanna space between two widgets
          /// SizedBox(
          ///   width: 50,
          /// )
          /// Use like this
          50.wBox,
          /// Text("Welcome").pOnly(b: 10, l: 10, r: 10, t: 10),
          ///"Get height of Screen ${context.height(v: 1.5)}"
          ///"Get width of Screen ${context.width(v: 1.5)}"
          ///"Change Feet to Meter of Any number ${10.fToMeter()}"
          ///"Change Meter to Feet of Any number ${10.mToFeet()}"
          ///"Multiple of any value with it self ${10.5.powValue(v: 3)}"
          ///// Write For only GestureDetector and in this only one function onTap
          const Text("Welcome").pZ().onTab(() {
            // context.showMessage(text: "Hello In IndianCreator");
            // context.goTo(context: context,page: NextPage());
          })
        ],
      ),
    ).safeArea();
  }
}
