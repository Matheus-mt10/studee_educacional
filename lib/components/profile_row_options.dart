import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class ProfileRowOptions extends StatefulWidget {
  ProfileRowOptions(
      {super.key,
      required this.icon,
      required this.title,
      required this.btn,
      required this.pRigth,
      required this.pRightBtn,
      });

  final IconData icon;
  final String title;
  final IconData btn;
  final double pRigth;
  final double pRightBtn;
  

  @override
  State<ProfileRowOptions> createState() => _ProfileRowOptionsState();
}

class _ProfileRowOptionsState extends State<ProfileRowOptions> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
        // color: const Color.fromARGB(196, 158, 158, 158),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 20),
              child: Icon(widget.icon),
            ),
            Padding(
              padding: EdgeInsets.only(right: widget.pRigth),
              child: Text(
                widget.title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            InkWell(
              onTap: () {
              
              },
              child: Padding(
                padding:  EdgeInsets.only(right: widget.pRightBtn),
                child: Icon(FontAwesomeIcons.chevronRight),
              ),
            )
          ],
        ),
      ),
    );
  }
}
