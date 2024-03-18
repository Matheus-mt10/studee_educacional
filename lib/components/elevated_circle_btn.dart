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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 90,
        child: ElevatedButton(
          onPressed: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
              ),
              Text(textBtn)
            ],
          ),
          style: ElevatedButton.styleFrom(
              shape: styleBtn, padding: EdgeInsets.all(padding)),
        ),
      ),
    );
  }
}
