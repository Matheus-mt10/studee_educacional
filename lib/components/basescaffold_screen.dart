import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:studee_educational/components/drawerhome_screen.dart';

class BaseScaffold extends StatefulWidget {
  final Widget body;
  final bool showAppBar;
  final bool showBottomBar;

  const BaseScaffold(
      {required this.body,
      this.showAppBar = true,
      this.showBottomBar = true,
      super.key});

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
        bottomNavigationBar:
            BottomNavigationBar(items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.house),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.bookOpen),
            label: 'Matérias',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.solidBell),
            label: 'notificações',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.solidUser),
            label: 'Perfil',
          ),
        ]),
      ),
    );
  }
}
