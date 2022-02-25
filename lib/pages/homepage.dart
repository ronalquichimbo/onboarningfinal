import 'package:flutter/material.dart';
import 'package:onboardingfinal/pages/pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int valor = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: PageView(
        onPageChanged: (value) {
          setState(() {
            valor = value.toInt();
          });
        },
        children: [
          Pages(
            image: 'assets/page1.png',
            primaText: 'Our Tech',
            secondText: "in your hand",
            texto:
                'You probably own a portable device, such as a smartphone or a tablet – or perhaps both. Just like billions of people around the world, you use your mobile device every day,',
            textobuton: "Learn more",
            top: size.height / 2.2,
            stop: size.width / 1.75,
            stop1: size.width / 2,
            topimg: size.height / 20,
            img2: 'assets/circular1.png',
            topimg2: -120,
            leftimg2: -180,
            valor: valor,
          ),
          Pages(
            image: 'assets/page2.png',
            primaText: 'All Control ',
            secondText: "in your screen",
            texto:
                "We represents a great opportunity for your business to generate new sales. It also offers easier ways of managing your day-to-day operations through mobile.",
            textobuton: "Learn more",
            top: size.height / 2.2,
            stop: size.width / 16,
            stop1: size.width / 16.1,
            topimg: size.height / 12,
            leftimg: 50,
            img2: 'assets/p2.png',
            topimg2: 700,
            leftimg2: -40,
            valor: valor,
          ),
          Pages(
            image: 'assets/page3.png',
            primaText: 'Understand',
            secondText: "the real benefits",
            texto:
                'Our portable technology gives your customers knowledge about you. But it also gives you knowledge about your customers, then you will feel your benefits.',
            textobuton: "Learn more",
            top: size.height / 10,
            stop: size.width / 2.2,
            stop1: size.width / 2.9,
            topimg: size.height / 8,
            img2: 'assets/forma3.png',
            topimg2: 170,
            leftimg2: 350,
            valor: valor,
          ),
        ],
      ),
    );
  }
}
