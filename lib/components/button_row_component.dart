import 'package:flutter/material.dart';
import 'package:purple_calc/components/button_component.dart';

class ButtonRowComponent extends StatelessWidget {
  final List<ButtonComponent> buttons;
  const ButtonRowComponent({required this.buttons, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: buttons.fold(<Widget>[], (list, button) {
          list.isEmpty
              ? list.add(button)
              : list.addAll([SizedBox(width: 1), button]);
          return list;
        }),
      ),
    );
  }
}
