import 'package:bbva_app/pages/details_account.dart';
import 'package:bbva_app/widgets/background_color.dart';
import 'package:bbva_app/widgets/credit_cars_widget.dart';
import 'package:bbva_app/widgets/custom_appbar.dart';
import 'package:bbva_app/widgets/list_options_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  static final routeName = '/home';
  final Color color = Color(0xff004481);
  final Color color2 = Color(0xff86A6C3);
  final Color backgroudColor = Color(0xffE5F0F6);

  final List<Map<String, dynamic>> iconsMenu = [
    {'name': 'home', 'icon': 'home_icon.png', 'id': 0},
    {'name': 'healt', 'icon': 'healt_icon.png', 'id': 1},
    {'name': 'plus', 'icon': 'plus_rounded_icon.png', 'id': 2},
    {'name': 'email', 'icon': 'email_icon.png', 'id': 3},
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroudColor,
      appBar: CustomAppbar(
        colorBackground: color,
      ),
      body: Stack(
        children: [
          BackgroundColor(size: size, color: color),
          // SafeArea(
          //   child: CustomAppbar2(),
          // ),

          // SafeArea(
          //   child: Container(
          //     width: size.width,
          //     height: 50,
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceAround,
          //       children: [
          //         Image.asset(
          //           'assets/menu.png',
          //           width: 27,
          //           height: 23,
          //           color: Colors.white,
          //         ),
          //         Text(
          //           'Hola, Lucas',
          //           style: TextStyle(
          //             color: Colors.white,
          //             fontSize: 20,
          //           ),
          //         ),
          //         Container(
          //           width: 32,
          //           height: 32,
          //           decoration: BoxDecoration(
          //             color: Colors.white,
          //             borderRadius: BorderRadius.circular(100),
          //             boxShadow: [
          //               BoxShadow(
          //                 color: Colors.black12,
          //                 blurRadius: 15,
          //                 offset: Offset(0, 5),
          //               )
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),

          // card accounts
          _BodyAccount(),

          // ListOptions(),

          // botton navigation bar
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Align(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 4,
                        offset: Offset(0, 3),
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(iconsMenu.length, (index) {
                      final iconMenu = iconsMenu[index];
                      return GestureDetector(
                        onLongPress: () => HapticFeedback.lightImpact(),
                        onTap: () {
                          print('tap en el menu $index');
                        },
                        child: Image.asset(
                          'assets/${iconMenu['icon']}',
                          width: 23,
                          height: 26,
                          color: color,
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _BodyAccount extends StatelessWidget {
  final Color colorPrimary = Color(0xff004481);
  final Color colorSecondary = Color(0xff1873B9);
  final Color colorTertiary = Color(0xff839BB1);

  // width: MediaQuery.of(context).size.width,
  // height: double.infinity,

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      children: [
        SizedBox(
          height: 30,
        ),
        // Accounts
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 11),
          child: Container(
            width: double.infinity,
            height: 214,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 38,
                vertical: 27,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'TUS CUENTAS',
                        style: TextStyle(
                          color: colorPrimary,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: colorTertiary,
                        size: 28,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  InkWell(
                    onTap: () {
                      print('tap en la cuenta 1');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DetailsAccount(
                            account: '*37265',
                            mount: '20000',
                            numberAccount: '001ah7246',
                          ),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '001ah7246',
                              style: TextStyle(
                                fontSize: 17,
                                color: colorSecondary,
                              ),
                            ),
                            Text(
                              '*37265',
                              style: TextStyle(
                                fontSize: 14,
                                color: colorTertiary,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          '\$20000',
                          style: TextStyle(
                            fontSize: 20,
                            color: colorPrimary,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      print('tap en la cuenta 2');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DetailsAccount(
                            account: '*37264',
                            mount: '158000',
                            numberAccount: '001ah7246',
                          ),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '001ah7246',
                              style: TextStyle(
                                fontSize: 17,
                                color: colorSecondary,
                              ),
                            ),
                            Text(
                              '*37264',
                              style: TextStyle(
                                fontSize: 14,
                                color: colorTertiary,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          '\$158000',
                          style: TextStyle(
                            fontSize: 20,
                            color: colorPrimary,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 15,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),

        // list options
        SizedBox(
          height: 22,
        ),
        ListOptions(),

        SizedBox(
          height: 9,
        ),
        CreditCards(),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
