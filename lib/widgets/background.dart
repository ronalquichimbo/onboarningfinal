import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.bottomRight,
        end: Alignment.topRight,
        stops: [0.3, 0.9],
        colors: [
          Color(0xffb436eb),
          Color(0xff5f0094),
        ],
      )),
    );
  }
}
