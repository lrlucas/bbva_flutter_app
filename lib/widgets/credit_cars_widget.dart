import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CreditCards extends StatefulWidget {
  @override
  _CreditCardsState createState() => _CreditCardsState();
}

class _CreditCardsState extends State<CreditCards>
    with SingleTickerProviderStateMixin {
  final Color colorPrimary = Color(0xff004481);
  ScrollController _controller = new ScrollController();
  late AnimationController _animationController;
  bool desactivateCard = false;

  @override
  void initState() {
    _controller.addListener(() {
      // print(_controller.position.userScrollDirection);
      // print(_controller.offset);

      // if (_controller.position.userScrollDirection == ScrollDirection.reverse) {
      //   _animationController.forward();
      // } else if (_controller.position.userScrollDirection ==
      //     ScrollDirection.forward) {
      //   _animationController.reset();
      // }
    });

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 5000),
      vsync: this,
    );

    // if (_controller.position.userScrollDirection == ScrollDirection.reverse) {
    //   _animationController.forward();
    // } else if (_controller.position.userScrollDirection ==
    //     ScrollDirection.forward) {
    //   _animationController.reset();
    // }
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 271,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // SizedBox(
          //   height: 40,
          // ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Tus tarjetas',
                  style: TextStyle(
                    fontSize: 15,
                    color: colorPrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // SizedBox(
          //   height: 20,
          // ),

          // Text('data'),

          SingleChildScrollView(
            controller: _controller,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 0,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  // CARD 1
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: _CardWidget(colorPrimary: colorPrimary),
                  ),
                  SizedBox(
                    width: 12,
                  ),

                  // CARD 2
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: _CardWidget(colorPrimary: colorPrimary),
                  ),
                  SizedBox(
                    width: 12,
                  ),

                  // CARD 3
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: _CardWidget(colorPrimary: colorPrimary),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                ],
              ),
            ),
          ),
          // SizedBox(
          //   height: 50,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 25,
              ),
              Image.asset(
                'assets/tarjeta_digital_icon.png',
                width: 14,
                height: 10,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Tarjeta digital',
                style: TextStyle(
                  fontSize: 11,
                  color: colorPrimary,
                ),
              ),
              // Spacer(),
              SizedBox(
                width: 28,
              ),
              Text(
                'Desactivar',
                style: TextStyle(
                  fontSize: 11,
                  color: colorPrimary,
                ),
              ),
              Transform.scale(
                scale: 0.6,
                child: Switch.adaptive(
                  value: desactivateCard,
                  onChanged: (value) {
                    setState(() {
                      desactivateCard = value;
                    });
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

// single card
class _CardWidget extends StatelessWidget {
  const _CardWidget({
    Key? key,
    required this.colorPrimary,
  }) : super(key: key);

  final Color colorPrimary;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 226,
      height: 132,
      decoration: BoxDecoration(
        color: colorPrimary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 26,
          right: 24,
          top: 22,
          bottom: 19.5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/bbva_icon_white.png',
              width: 47,
              height: 14,
            ),
            SizedBox(
              height: 15,
            ),
            Image.asset(
              'assets/chip_icon.png',
              width: 25,
              height: 19,
            ),
            Spacer(),
            Row(
              children: [
                Text(
                  '*62396',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                Spacer(),
                Image.asset(
                  'assets/visa_icon.png',
                  width: 43,
                  height: 14,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
