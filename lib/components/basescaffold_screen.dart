import 'package:flutter/material.dart';

class BaseScaffold extends StatefulWidget {
  final Widget body;

  const BaseScaffold({required this.body, super.key});

  @override
  State<BaseScaffold> createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends State<BaseScaffold> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: widget.body,
        ),
      ),
    );
  }
}
