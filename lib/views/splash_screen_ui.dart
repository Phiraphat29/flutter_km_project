import 'package:flutter/material.dart';
import 'package:flutter_km_project/views/home01_ui.dart';

class SplashScreenUi extends StatefulWidget {
  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {
  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home01Ui())),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/pic1.png",
                width: MediaQuery.of(context).size.width * 0.3),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Text(
              "Flutter KM App",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Kanit'),
            ),
            Text(
              "เรียนรู้การใช้งาน Flutter เบื้องต้น",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width * 0.02,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Kanit'),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.075,
            ),
            CircularProgressIndicator(
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
