import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  final String label;
  final bool obsText;
  const Input({required this.label, this.obsText = false, super.key});

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
            border: const OutlineInputBorder(), label: Text(widget.label)),
        obscureText: widget.obsText,
      ),
    );
  }
}
