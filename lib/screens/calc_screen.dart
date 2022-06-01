import 'package:flutter/material.dart';
import 'package:purple_calc/components/display_component.dart';
import 'package:purple_calc/components/keyboard_component.dart';

class CalcScreen extends StatelessWidget {
  _onPressed(String text) {
    print(text);
  }

  const CalcScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          DisplayComponent(text: 'Display'),
          KeyboardComponent(onPressed: _onPressed),
        ],
      ),
    );
  }
}
