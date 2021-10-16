import 'package:flutter/material.dart';

class CustomAvatar extends StatelessWidget {
  const CustomAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: 30,
          ),
          // avatar
          Container(
            height: 88,
            width: 88,
            decoration: BoxDecoration(
              // shape: BoxShape.circle,
              color: Color(0xff004481),
              borderRadius: BorderRadius.circular(100),
            ),
            // child: Center(
            //   child: Image.asset(
            //     'assets/avatar_icon_2.png',
            //     // width: 10,
            //     // height: 10,
            //   ),
            // ),
          ),
          SizedBox(
            width: 19,
          ),
          // icon direction
          Container(
            height: 33,
            width: 33,
            decoration: BoxDecoration(
              color: Color(0xff004481),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                'assets/exchange_icon.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
