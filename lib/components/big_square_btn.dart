import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BigSquareBtn extends StatefulWidget {
  final IconData icon;

  const BigSquareBtn({super.key, required this.icon});

  @override
  State<BigSquareBtn> createState() => _BigSquareBtnState();
}

class _BigSquareBtnState extends State<BigSquareBtn> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(10),
            color: Colors.amber,
          ),
          child: const widget.),
    );
  }
}
