import 'dart:html';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ClassesBtn extends StatefulWidget {
  ClassesBtn(
      {super.key,
      required this.image,
      required this.titleCard,
      });

  final String image;
  final String titleCard;


  @override
  State<ClassesBtn> createState() => _ClassesBtnState();
}

class _ClassesBtnState extends State<ClassesBtn> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ,
      child: Container(
        width: 180,
        height: 70,
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 40,
                width: 40,
                child: Image.asset(
                  widget.image,
                )),
            Padding(
              padding: const EdgeInsets.only(right: 14.0),
              child: Text(
                widget.titleCard,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
