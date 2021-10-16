import 'package:flutter/material.dart';

class IconOptions extends StatelessWidget {
  const IconOptions({
    Key? key,
    required this.option,
  }) : super(key: key);

  final Map<String, dynamic> option;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            color: option['color'],
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
            child: Image.asset(
              'assets/${option['icon']}',
              width: 20,
              height: 20,
            ),
          ),
        ),
        SizedBox(
          height: 9,
        ),
        Text(
          option['title'],
          style: TextStyle(
            fontSize: 11,
            color: Color(0xff4B637A),
          ),
        ),
      ],
    );
  }
}
