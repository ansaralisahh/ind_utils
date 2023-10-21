import 'package:flutter/material.dart';
import 'package:ind_utils/ind_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var log = Log();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.indigo[300],
      ),
      body: Column(
        mainAxisAlignment: INDConstant.mainCenter,
        crossAxisAlignment: INDConstant.crossCenter,
        children: [
          "Ansar".txt().center()
        ],
      ),
    );
  }
}
