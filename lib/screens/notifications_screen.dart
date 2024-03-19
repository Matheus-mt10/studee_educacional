import 'package:flutter/material.dart';
import 'package:studee_educational/components/basescaffold_screen.dart';

class NoticationsScreen extends StatefulWidget {
  const NoticationsScreen({super.key});

  @override
  State<NoticationsScreen> createState() => _NoticationsScreenState();
}

class _NoticationsScreenState extends State<NoticationsScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: Center(
        child: Column(
          children: [Text('dsdsds')],
        ),
      ),
    );
  }
}
