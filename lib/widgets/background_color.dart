import 'package:flutter/material.dart';

class BackgroundColor extends StatelessWidget {
  const BackgroundColor({
    Key? key,
    required this.size,
    required this.color,
  }) : super(key: key);

  final Size size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.2,
      color: color,
    );
  }
}
