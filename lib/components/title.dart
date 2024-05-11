import 'package:flutter/material.dart';

class TitleStyle extends StatelessWidget {
  final String titleText;
  final double fontSize;
  final double paddingLeft;
  const TitleStyle(
      {super.key,
      required this.titleText,
      required this.fontSize,
      this.paddingLeft = 10});

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText,
      style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w600),
    );
  }
}
