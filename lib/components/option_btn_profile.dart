import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class OptionBtnProfile extends StatefulWidget {
  final IconData iconBtn;
  final double iconSize;
  final String optionText;
  final String location;

  const OptionBtnProfile(
      {super.key,
      required this.iconBtn,
      required this.iconSize,
      required this.optionText,
      required this.location});

  @override
  State<OptionBtnProfile> createState() => _OptionBtnProfileState();
}

class _OptionBtnProfileState extends State<OptionBtnProfile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 1,
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(10),
              color: Colors.amber,
            ),
            child: Icon(
              widget.iconBtn,
              size: widget.iconSize,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            widget.optionText,
            style: const TextStyle(fontSize: 20), 
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: IconButton(
                onPressed: () {
                  context.push('');
                },
                icon: const Icon(FontAwesomeIcons.chevronRight)))
      ],
    );
  }
}
