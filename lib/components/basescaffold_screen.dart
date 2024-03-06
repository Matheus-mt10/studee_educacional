import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:studee_educational/components/drawerhome_screen.dart';

class BaseScaffold extends StatefulWidget {
  final Widget body;
  final bool showAppBar;
  final bool showBottomBar;

  const BaseScaffold({required this.body, this.showAppBar = true, this.showBottomBar=true ,super.key});

  @override
  State<BaseScaffold> createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends State<BaseScaffold> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const DrawerHome(),
        appBar: widget.showAppBar
            ? AppBar(
                title: const Text('Home'),
                actions: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.notifications))
                ],
              )
            : null,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: widget.body,
        ),
        bottomNavigationBar: widget.showAppBar ? BottomAppBar(
          color: Colors.black12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(FontAwesomeIcons.house)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.solidUser)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.clipboardList)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.magnifyingGlass))
            ],
          ),
        ):null,
      ),
    );
  }
}
