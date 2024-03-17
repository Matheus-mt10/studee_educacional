import 'package:flutter/material.dart';

class ElevatedCircleBtn extends StatelessWidget {
  final IconData icon;
  final OutlinedBorder styleBtn;
  final String textBtn;
  final double padding;

  const ElevatedCircleBtn(
      {super.key,
      required this.icon,
      required this.textBtn,
      required this.styleBtn,
      required this.padding});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Column(
        children: [
          Icon(
            icon,
          ),
          SizedBox(height: 8),
          Text(textBtn),
        ],
      ),
      style: ElevatedButton.styleFrom(
          shape: styleBtn, padding: EdgeInsets.all(padding)),
    );
  }
}
