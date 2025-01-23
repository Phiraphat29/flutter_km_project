import 'package:flutter/material.dart';
import 'package:flutter_km_project/views/home01_ui.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionScreenUi extends StatefulWidget {
  const IntroductionScreenUi({super.key});

  @override
  State<IntroductionScreenUi> createState() => _IntroductionScreenUiState();
}

class _IntroductionScreenUiState extends State<IntroductionScreenUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "SAU Hello 😘",
            body: 'Welcome to Thailand naja',
            image: Image.asset(
              'assets/images/pic1.png',
              width: MediaQuery.of(context).size.width * 0.5,
            ),
          ),
          PageViewModel(
            title: "SAU Hello 😘",
            body: 'Welcome to Thailand naja',
            image: Image.asset(
              'assets/images/pic2.png',
              width: MediaQuery.of(context).size.width * 0.5,
            ),
          ),
          PageViewModel(
            title: "SAU Hello 😘",
            body: 'Welcome to Thailand naja',
            image: Image.asset(
              'assets/images/pic3.png',
              width: MediaQuery.of(context).size.width * 0.5,
            ),
          ),
          PageViewModel(
            title: "SAU Hello 😘",
            body: 'Welcome to Thailand naja',
            image: Image.asset(
              'assets/images/pic4.png',
              width: MediaQuery.of(context).size.width * 0.5,
            ),
          ),
          PageViewModel(
            title: "SAU Hello 😘",
            body: 'Welcome to Thailand naja',
            image: Image.asset(
              'assets/images/pic5.png',
              width: MediaQuery.of(context).size.width * 0.5,
            ),
          ),
        ],
        showSkipButton: true,
        skip: Text("ข้าม"),
        showNextButton: true,
        next: Icon(
          Icons.arrow_forward_ios,
        ),
        showDoneButton: true,
        done: Text("หน้าหลัก"),
        onDone: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Home01Ui(),
              ));
        },
        scrollPhysics: ClampingScrollPhysics(),
      ),
    );
  }
}
