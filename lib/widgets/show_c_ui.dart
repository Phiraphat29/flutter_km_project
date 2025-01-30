import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShowCUI extends StatelessWidget {
  const ShowCUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          FontAwesomeIcons.line,
          size: MediaQuery.of(context).size.width * 0.5,
          color: const Color.fromARGB(255, 24, 131, 10),
        ),
      ),
    );
  }
}
