import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final String text;
  final bool longButton;
  const ButtonComponent({required this.text, this.longButton = false, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: longButton ? 2 : 1,
        child: ElevatedButton(onPressed: () {}, child: Text(text)));
  }
}
