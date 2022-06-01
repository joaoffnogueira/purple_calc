import 'package:flutter/material.dart';
import 'package:purple_calc/components/display_component.dart';
import 'package:purple_calc/components/keyboard_component.dart';
import 'package:purple_calc/models/memory_model.dart';

class CalcScreen extends StatefulWidget {
  const CalcScreen({Key? key}) : super(key: key);

  @override
  State<CalcScreen> createState() => _CalcScreenState();
}

class _CalcScreenState extends State<CalcScreen> {
  final MemoryModel memory = MemoryModel();
  _onPressed(String command) {
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          DisplayComponent(text: memory.value),
          KeyboardComponent(onPressed: _onPressed),
        ],
      ),
    );
  }
}
