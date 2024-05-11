import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  const Input({super.key, required this.label, required this.internalText});

  final String label;
  final String internalText;

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: TextField(
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.black),
                  borderRadius: BorderRadius.circular(50)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.blue),
                  borderRadius: BorderRadius.circular(50)),
              label: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  widget.label,
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              hintText: widget.internalText),
        ));
  }
}
