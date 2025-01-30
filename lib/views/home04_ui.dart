import 'package:flutter/material.dart';

class Home04UI extends StatefulWidget {
  const Home04UI({super.key});

  @override
  State<Home04UI> createState() => _Home04UIState();
}

class _Home04UIState extends State<Home04UI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'DTI App บ๊ายบาย',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Kanit',
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
        ),
      ),
    );
  }
}
