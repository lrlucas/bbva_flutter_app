import 'package:bbva_app/pages/home_page.dart';
import 'package:bbva_app/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: LoginPage.routeName,
      routes: {
        HomePage.routeName: (_) => HomePage(),
        LoginPage.routeName: (_) => LoginPage(),
      },
    );
  }
}
