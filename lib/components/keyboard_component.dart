import 'package:flutter/material.dart';
import 'package:purple_calc/components/button_component.dart';
import 'package:purple_calc/components/button_row_component.dart';

class KeyboardComponent extends StatelessWidget {
  const KeyboardComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: [
          ButtonRowComponent(
            buttons: [
              ButtonComponent(text: 'AC', longButton: true),
              ButtonComponent(text: '%'),
              ButtonComponent(text: '÷'),
            ],
          ),
          ButtonRowComponent(buttons: [
            ButtonComponent(text: '7'),
            ButtonComponent(text: '8'),
            ButtonComponent(text: '9'),
            ButtonComponent(text: '+'),
          ]),
          ButtonRowComponent(buttons: [
            ButtonComponent(text: '4'),
            ButtonComponent(text: '5'),
            ButtonComponent(text: '6'),
            ButtonComponent(text: '-'),
          ]),
          ButtonRowComponent(buttons: [
            ButtonComponent(text: '1'),
            ButtonComponent(text: '2'),
            ButtonComponent(text: '3'),
            ButtonComponent(text: '*'),
          ]),
          ButtonRowComponent(buttons: [
            ButtonComponent(text: '0', longButton: true),
            ButtonComponent(text: '.'),
            ButtonComponent(text: '='),
          ]),
        ],
      ),
    );
  }
}
