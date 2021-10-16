import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomAppbar extends StatelessWidget with PreferredSizeWidget {
  final Color color = Color(0xff004481);
  final Color colorBackground;
  CustomAppbar({required this.colorBackground});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: colorBackground,
      centerTitle: true,
      leading: Padding(
        padding: const EdgeInsets.only(
          left: 25,
        ),
        child: Transform.scale(
          scale: 0.7,
          child: Image.asset(
            'assets/menu.png',
            color: Colors.white,
            // width: 23,
            // height: 27,
          ),
        ),
      ),
      title: Text(
        'Hola, Lucas',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              // child: Image.asset(
              //   'assets/avatar.jpeg',
              //   // width: 32,
              //   // height: 32,
              // ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class CustomAppbar3 extends StatelessWidget with PreferredSizeWidget {
  final Color color = Color(0xff004481);
  final String account;

  CustomAppbar3(this.account);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: Padding(
        padding: const EdgeInsets.only(
          left: 25,
        ),
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Transform.scale(
            scale: 0.7,
            child: Image.asset(
              'assets/back_arrow_icon.png',
              color: color,
              // width: 23,
              // height: 27,
            ),
          ),
        ),
      ),
      title: Text(
        'Cuenta, $account',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: color,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(50),
              ),
              // child: Image.asset(
              //   'assets/avatar.jpeg',
              //   // width: 32,
              //   // height: 32,
              // ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class CustomAppbar2 extends StatelessWidget {
  const CustomAppbar2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 30,
            ),
            Image.asset(
              'assets/menu.png',
              width: 27,
              height: 23,
            ),
            SizedBox(
              width: 78,
            ),
            Image.asset(
              'assets/bbva_icon.png',
              width: 104,
              height: 31,
            ),
          ],
        ),
      ),
    );
  }
}
