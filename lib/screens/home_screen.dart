

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_painter.dart';

GlobalKey globalKey = GlobalKey();
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraint){
            return CustomPaint(
              painter: MyPainter(),
              size: Size(constraint.maxWidth, constraint.maxHeight),
            );
          })
    );
  }
}
