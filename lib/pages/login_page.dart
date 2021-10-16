import 'package:bbva_app/widgets/avatar_widget.dart';
import 'package:bbva_app/widgets/custom_appbar.dart';
import 'package:bbva_app/widgets/custom_input_login.dart';
import 'package:bbva_app/widgets/forgot_password.dart';
import 'package:bbva_app/widgets/list_actions.dart';
import 'package:bbva_app/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static final routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppbar(
        colorBackground: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          // Custom appbar
          // CustomAppbar2(),

          SizedBox(
            height: 20,
          ),

          // Avatar
          CustomAvatar(),

          SizedBox(
            height: 20,
          ),

          // title name
          TitleName(),

          SizedBox(
            height: 30,
          ),

          // input
          CustomImputLogin(),
          SizedBox(
            height: 33.5,
          ),
          ForgotPassword(),
          SizedBox(
            height: 92,
          ),
          ListActions(),

          Spacer(),
          Container(
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 8,
                  color: Color(0xff004481),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
