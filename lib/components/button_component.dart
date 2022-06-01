import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final String text;
  final bool longButton;
  final bool operationButton;
  final void Function(String) onPressed;
  const ButtonComponent(
      {required this.text,
      this.longButton = false,
      this.operationButton = false,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: longButton ? 2 : 1,
        child: ElevatedButton(
            onPressed: () => onPressed(text), child: Text(text)));
  }
}
