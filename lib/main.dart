import 'package:flutter/material.dart';
import 'package:flutter_km_project/views/introduction_screen_ui.dart';
import 'package:flutter_km_project/views/splash_screen_ui.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(FlutterKM());
}

//-----------------
class FlutterKM extends StatefulWidget {
  const FlutterKM({super.key});

  @override
  State<FlutterKM> createState() => _FlutterKMState();
}

class _FlutterKMState extends State<FlutterKM> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroductionScreenUi(),
    );
  }
}
