import 'package:flutter/material.dart';

class Subtitle extends StatelessWidget {
  const Subtitle({super.key, required this.subtitle, this.fontSize = 18});

  final String subtitle;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: TextStyle(fontSize: fontSize, color: Colors.grey),
    );
  }
}
