import 'package:flutter/material.dart';

class BackgroundRectangulo extends StatelessWidget {
  const BackgroundRectangulo({
    required this.colors,
    Key? key,
    this.left,
    required this.stops,
    this.top,
    required this.radius,
  }) : super(key: key);
  final List<Color> colors;
  final double? left;
  final double? top;
  final List<double> stops;
  final double radius;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Positioned(
      top: top,
      left: left,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            stops: stops,
            colors: colors,
          ),
        ),
        width: size.width,
        height: size.height,
      ),
    );
  }
}
