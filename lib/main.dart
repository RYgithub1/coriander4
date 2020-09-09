import 'package:flutter/material.dart';

// 最初に呼ばれるmain -> MyApp呼び出し -> class MyApp呼び出し
void main() {
  runApp(MyApp());
}


// 【レス】--------
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Scaffold(
        appBar: AppBar(
          title: const Text("TubeApp"),
        ),
        body: Container(),
      ),
    );
  }
}

