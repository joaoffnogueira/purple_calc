import 'package:flutter/material.dart';
import 'package:purple_calc/components/button_component.dart';
import 'package:purple_calc/components/button_row_component.dart';

class KeyboardComponent extends StatelessWidget {
  final void Function(String) onPressed;
  const KeyboardComponent({required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: [
          ButtonRowComponent(
            buttons: [
              ButtonComponent(
                text: 'AC',
                longButton: true,
                onPressed: onPressed,
              ),
              ButtonComponent(
                text: '%',
                operationButton: true,
                onPressed: onPressed,
              ),
              ButtonComponent(
                text: '÷',
                operationButton: true,
                onPressed: onPressed,
              ),
            ],
          ),
          SizedBox(height: 1),
          ButtonRowComponent(buttons: [
            ButtonComponent(
              text: '7',
              onPressed: onPressed,
            ),
            ButtonComponent(
              text: '8',
              onPressed: onPressed,
            ),
            ButtonComponent(
              text: '9',
              onPressed: onPressed,
            ),
            ButtonComponent(
              text: '+',
              operationButton: true,
              onPressed: onPressed,
            ),
          ]),
          SizedBox(height: 1),
          ButtonRowComponent(buttons: [
            ButtonComponent(
              text: '4',
              onPressed: onPressed,
            ),
            ButtonComponent(
              text: '5',
              onPressed: onPressed,
            ),
            ButtonComponent(
              text: '6',
              onPressed: onPressed,
            ),
            ButtonComponent(
              text: '-',
              operationButton: true,
              onPressed: onPressed,
            ),
          ]),
          SizedBox(height: 1),
          ButtonRowComponent(buttons: [
            ButtonComponent(
              text: '1',
              onPressed: onPressed,
            ),
            ButtonComponent(
              text: '2',
              onPressed: onPressed,
            ),
            ButtonComponent(
              text: '3',
              onPressed: onPressed,
            ),
            ButtonComponent(
              text: '*',
              operationButton: true,
              onPressed: onPressed,
            ),
          ]),
          SizedBox(height: 1),
          ButtonRowComponent(buttons: [
            ButtonComponent(
              text: '0',
              longButton: true,
              onPressed: onPressed,
            ),
            ButtonComponent(
              text: '.',
              onPressed: onPressed,
            ),
            ButtonComponent(
              text: '=',
              operationButton: true,
              onPressed: onPressed,
            ),
          ]),
        ],
      ),
    );
  }
}
