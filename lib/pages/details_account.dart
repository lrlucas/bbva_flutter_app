import 'package:bbva_app/widgets/background_color.dart';
import 'package:bbva_app/widgets/custom_appbar.dart';
import 'package:bbva_app/widgets/icon_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class DetailsAccount extends StatefulWidget {
  final String account;
  final String mount;
  final String numberAccount;

  DetailsAccount({
    this.account = 'no account',
    this.mount = '0000',
    this.numberAccount = '0000',
  });

  @override
  State<DetailsAccount> createState() => _DetailsAccountState();
}

class _DetailsAccountState extends State<DetailsAccount> {
  final Color color = Color(0xff004481);
  final Color colorTextBackground = Color(0xff8294CC);

  final Color colorPrimary = Color(0xff004481);
  bool desactivateCard = false;

  final List<Map<String, dynamic>> listOptions = [
    {
      'title': 'Pagar servicio',
      'color': Color(0xff3767F0),
      'icon': 'pagar_servicio_icon.png'
    },
    {
      'title': 'Transferir',
      'color': Color(0xff4CABCE),
      'icon': 'transfer_icon.png'
    },
    {
      'title': 'Retiro sin tarjeta',
      'color': Color(0xff49D17C),
      'icon': 'dolar_icon.png'
    },
    {'title': '6 más', 'color': Color(0xff004481), 'icon': 'more_icon.png'},
    {'title': '6 más', 'color': Color(0xff004481), 'icon': 'more_icon.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5F0F6),
      appBar: CustomAppbar3(widget.account),
      body: Stack(
        children: [
          BackgroundColor(
            size: MediaQuery.of(context).size,
            color: Colors.white,
          ),
          ListView(
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 11,
                ),
                child: Container(
                  width: double.infinity,
                  height: 214,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: color,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 39,
                      vertical: 23,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/bbva_icon_white.png',
                              width: 79,
                              height: 23,
                            ),
                            Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            /// int.parse(this.mount).toStringAsFixed(2)
                            Text(
                              '\$${NumberFormat('######,###.00').format(int.parse(this.widget.mount))}',
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              'Saldo disponible',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              this.widget.numberAccount,
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),
                            Image.asset(
                              'assets/visa_icon.png',
                              width: 52,
                              height: 17,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // IconOptions(option: option)
              Container(
                width: double.infinity,
                height: 220,
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                          width: 75,
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
                    SizedBox(
                      height: 140,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: List.generate(listOptions.length, (index) {
                          final option = listOptions[index];
                          return Padding(
                            padding: const EdgeInsets.only(
                              top: 24,
                              left: 25,
                              bottom: 25,
                            ),
                            child: Column(
                              children: [
                                IconOptions(option: option),
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // ultimos movimientos
              Container(
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(26),
                    topRight: Radius.circular(26),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 32),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'ÚLTIMOS MOVIMIENTOS',
                            style: TextStyle(
                              color: color,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Image.asset(
                            'assets/search_icon.png',
                            width: 13,
                            height: 13,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      _LastMovements(
                        title: 'Su pago en efectivo',
                        subtitle: 'Movimiento BBVA',
                        mount: '1600',
                        color: color,
                        signMount: '+',
                        temporal: 'Hoy',
                        colorTextBackground: colorTextBackground,
                        colorMount: Color(0xff5FBE83),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      _LastMovements(
                        title: 'Spei enviado azteca',
                        subtitle: 'Trasnferencia interbancaria',
                        mount: '1600',
                        signMount: '-',
                        temporal: 'Hoy',
                        colorMount: Colors.red,
                        color: color,
                        colorTextBackground: colorTextBackground,
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '2 Enero',
                            style: TextStyle(
                              color: color,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      _LastMovements(
                        title: 'Su pago en efectivo',
                        subtitle: 'Movimiento BBVA',
                        mount: '1600',
                        signMount: '',
                        temporal: 'Ayer',
                        colorMount: Colors.black,
                        color: color,
                        colorTextBackground: colorTextBackground,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      _LastMovements(
                        title: 'Su pago en efectivo',
                        subtitle: 'Movimiento BBVA',
                        mount: '1600',
                        signMount: '',
                        temporal: 'Ayer',
                        colorMount: Colors.black,
                        color: color,
                        colorTextBackground: colorTextBackground,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _LastMovements extends StatelessWidget {
  const _LastMovements({
    Key? key,
    required this.color,
    required this.colorTextBackground,
    required this.title,
    required this.subtitle,
    required this.mount,
    required this.colorMount,
    required this.signMount,
    required this.temporal,
  }) : super(key: key);

  final Color color;
  final Color colorTextBackground;
  final String title;
  final String subtitle;
  final String mount;
  final Color colorMount;
  final String signMount;
  final String temporal;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 365,
      height: 59,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Color(0xffC0D4DF),
        ),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          right: 16,
          left: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  this.title,
                  style: TextStyle(
                    fontSize: 15,
                    color: color,
                  ),
                ),
                Spacer(),
                Text(
                  '${this.signMount} \$ ${NumberFormat('######,###.00').format(int.parse(this.mount))}',
                  style: TextStyle(
                    color: this.colorMount,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  this.subtitle,
                  style: TextStyle(
                    color: colorTextBackground,
                    fontSize: 10,
                  ),
                ),
                Spacer(),
                Text(
                  this.temporal,
                  style: TextStyle(
                    color: colorTextBackground,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
