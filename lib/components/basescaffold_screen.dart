import 'package:flutter/material.dart';
import 'package:studee_educational/components/drawerhome_screen.dart';

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
        appBar: AppBar(
          title: const Text('Home'),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
          ],
        ),
        drawer: const DrawerHome(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: widget.body,
        ),
      ),
    );
  }
}
