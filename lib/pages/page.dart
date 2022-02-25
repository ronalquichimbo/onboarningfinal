import 'package:flutter/material.dart';
import 'package:onboardingfinal/widgets/widgets.dart';

class Pages extends StatelessWidget {
  const Pages({
    Key? key,
    this.leftimg,
    required this.image,
    required this.primaText,
    required this.secondText,
    required this.texto,
    required this.textobuton,
    required this.top,
    required this.stop,
    required this.stop1,
    required this.topimg,
    required this.topimg2,
    this.leftimg2,
    required this.img2,
    required this.valor,
  }) : super(key: key);

  final String image;
  final String primaText;
  final String secondText;
  final double stop;
  final double stop1;
  final String texto;
  final String textobuton;
  final double top;
  final double topimg;
  final double? leftimg;
  final double topimg2;
  final double? leftimg2;
  final String img2;
  final int valor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        const Background(),
        BackgroundRectangulo(
          radius: 120,
          top: size.height / 1.8,
          left: size.width / 2.8,
          colors: const [
            Color(0xffffffff),
            Color(0xffcc1f72),
          ],
          stops: const [0.6, 0.9],
        ),
        BackgroundRectangulo(
          radius: 50,
          top: size.height / 1.6,
          colors: const [
            Color(0xffe92d37),
            Color(0xfffa8253),
          ],
          stops: const [0.3, 0.9],
        ),
        BackgroundText(
          texto: primaText,
          top: top,
          left: stop,
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          spacing: 2,
        ),
        BackgroundText(
          texto: secondText,
          color: Colors.white,
          top: top + 40,
          left: stop1,
          fontWeight: FontWeight.w200,
          spacing: 2,
          fontSize: 25,
        ),
        Positioned(
          top: topimg,
          left: leftimg,
          child: Image(
            image: AssetImage(image),
            width: size.width,
            height: size.height / 1.5,
          ),
        ),
        BackgroundText(
          texto: texto,
          top: size.height / 1.35,
          left: size.width / 18,
          fontSize: 12,
          color: Colors.white,
          fontWeight: FontWeight.w500,
          width: size.width / 1.1,
          heigth: size.height,
          textAlign: TextAlign.center,
          spacing: 1.5,
        ),
        Positioned(
          top: size.height / 1.2,
          left: size.width / 3.8,
          width: 200,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              textobuton,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                primary: const Color.fromRGBO(130, 87, 243, 50)),
          ),
        ),
        Positioned(
            top: size.height / 1.1,
            left: size.width / 2.7,
            child: Row(
              children: [
                if (valor == 0) ...[
                  const _Circlebuton(
                    color: Colors.white70,
                    sizecircule: 15,
                  ),
                  const _Circlebuton(
                    color: Colors.white24,
                    sizecircule: 15,
                  ),
                  const _Circlebuton(
                    color: Colors.white24,
                    sizecircule: 15,
                  ),
                ] else if (valor == 1) ...[
                  const _Circlebuton(
                    color: Colors.white24,
                    sizecircule: 15,
                  ),
                  const _Circlebuton(
                    color: Colors.white70,
                    sizecircule: 15,
                  ),
                  const _Circlebuton(
                    color: Colors.white24,
                    sizecircule: 15,
                  ),
                ] else if (valor == 2) ...[
                  const _Circlebuton(
                    color: Colors.white24,
                    sizecircule: 15,
                  ),
                  const _Circlebuton(
                    color: Colors.white24,
                    sizecircule: 15,
                  ),
                  const _Circlebuton(
                    color: Colors.white70,
                    sizecircule: 15,
                  ),
                ]
              ],
            )),
        Positioned(
          top: topimg2,
          left: leftimg2,
          child: Image(image: AssetImage(img2)),
        )
      ],
    );
  }
}

class _Circlebuton extends StatelessWidget {
  const _Circlebuton({
    Key? key,
    required this.color,
    required this.sizecircule,
  }) : super(key: key);

  final Color color;
  final double sizecircule;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      width: sizecircule,
      height: sizecircule,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),

      //color: Colors.white10,
    );
  }
}
