import 'package:flutter/material.dart';
import 'start_screen.dart';

void main() => runApp(const Fate());

class Fate extends StatelessWidget {
  const Fate({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const Start(),
    );
  }
}
