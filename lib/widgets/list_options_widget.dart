import 'package:bbva_app/widgets/icon_options.dart';
import 'package:flutter/material.dart';

class ListOptions extends StatelessWidget {
  final List<Map<String, dynamic>> listOptions = [
    {
      'title': 'Oportunidades',
      'color': Color(0xffF7893A),
      'icon': 'plus_icon.png'
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
    {
      'title': 'Pagar servicio',
      'color': Color(0xff735FDA),
      'icon': 'config_icon.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140,
      color: Colors.white,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: List.generate(listOptions.length, (index) {
          final option = listOptions[index];
          return Padding(
            padding: const EdgeInsets.only(
              top: 24,
              left: 25,
              bottom: 25,
            ),
            child: IconOptions(option: option),
          );
        }),
      ),
    );
  }
}
