import 'package:flutter/material.dart';

class BigSquareBtn extends StatefulWidget {
  const BigSquareBtn({super.key});

  @override
  State<BigSquareBtn> createState() => _BigSquareBtnState();
}

class _BigSquareBtnState extends State<BigSquareBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 100,
        child: DecoratedBox(                                                
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10))));
  }
}
