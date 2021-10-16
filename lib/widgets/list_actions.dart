import 'package:flutter/material.dart';

class ListActions extends StatelessWidget {
  final List<Map<String, dynamic>> listActions = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 36,
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/token_icon.png',
                  width: 27,
                  height: 32,
                ),
                SizedBox(
                  width: 21,
                ),
                Text(
                  'Token móvil',
                  style: TextStyle(
                    color: Color(0xff004481),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 45,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 36,
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/qr_icon.png',
                  width: 27,
                  height: 32,
                ),
                SizedBox(
                  width: 21,
                ),
                Column(
                  children: [
                    Text(
                      'Operacion',
                      style: TextStyle(
                        color: Color(0xff004481),
                      ),
                    ),
                    Text(
                      'QR + CoDi',
                      style: TextStyle(
                        color: Color(0xff004481),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 45,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 36,
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/phone_call_icon.png',
                  width: 27,
                  height: 32,
                ),
                SizedBox(
                  width: 21,
                ),
                Text(
                  'Linea BBVA',
                  style: TextStyle(
                    color: Color(0xff004481),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
