import 'package:flutter/material.dart';

class CustomImputLogin extends StatefulWidget {
  const CustomImputLogin({Key? key}) : super(key: key);

  @override
  State<CustomImputLogin> createState() => _CustomImputLoginState();
}

class _CustomImputLoginState extends State<CustomImputLogin> {
  bool _passwordField = true;

  @override
  void initState() {
    super.initState();
    _passwordField = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 30,
        right: 30,
      ),
      child: TextField(
        obscureText: _passwordField,
        style: TextStyle(
          color: Color(0xff004481),
        ),
        decoration: InputDecoration(
          labelText: 'Contraseña',
          labelStyle: TextStyle(
            color: Color(0xff004481),
          ),
          suffixIcon: IconButton(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: Icon(
              Icons.remove_red_eye,
              color: Color(0xff004481),
            ),
            onPressed: () {
              setState(() {
                this._passwordField = !this._passwordField;
              });
            },
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff004481),
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff004481),
            ),
          ),
        ),
      ),
    );
  }
}
