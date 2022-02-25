import 'package:flutter/material.dart';

class BackgroundText extends StatelessWidget {
  const BackgroundText({
    this.color,
    this.fontSize,
    this.fontWeight,
    this.heigth,
    Key? key,
    this.left,
    this.top,
    required this.texto,
    this.width,
    this.textAlign,
    this.spacing,
  }) : super(key: key);

  final double? top;
  final double? left;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String texto;
  final double? width;
  final double? heigth;
  final TextAlign? textAlign;
  final double? spacing;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      width: width,
      height: heigth,
      child: Text(
        texto,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          letterSpacing: spacing,
          fontFamily: 'Montserrat',
        ),
        maxLines: 5,
        textAlign: textAlign,
      ),
    );
  }
}
