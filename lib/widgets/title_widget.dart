import 'package:flutter/material.dart';

class TitleName extends StatelessWidget {
  const TitleName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
            ),
            child: Text(
              'Hola, Lucas',
              style: TextStyle(
                fontSize: 30,
                color: Color(0xff004481),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
            ),
            child: Text(
              'Que tal tu dia hoy?',
              style: TextStyle(
                fontSize: 15,
                color: Color(0xff889FB4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
