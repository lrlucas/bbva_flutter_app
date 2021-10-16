import 'package:bbva_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, HomePage.routeName);
            },
            child: Text(
              'Olvide mi contraseña',
              style: TextStyle(
                fontSize: 15,
                color: Color(0xff004481),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
