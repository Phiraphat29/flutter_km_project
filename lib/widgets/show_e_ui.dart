import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShowEUI extends StatelessWidget {
  const ShowEUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          FontAwesomeIcons.linkedin,
          size: MediaQuery.of(context).size.width * 0.5,
          color: const Color.fromARGB(255, 98, 177, 243),
        ),
      ),
    );
  }
}
