import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
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
        bottomNavigationBar: widget.showBottomBar ? Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12),
            child: GNav(
              gap: 10,
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.grey.shade800,
              padding: const EdgeInsets.all(16.0),
              tabs: [
                GButton(
                  icon: FontAwesomeIcons.house,
                  text: 'Home',
                  onPressed: () {},
                ),
                const GButton(
                  icon: FontAwesomeIcons.solidBell,
                  text: 'Notificações',
                ),
                GButton(
                  icon: FontAwesomeIcons.solidUser,
                  text: 'Perfil',
                  onPressed: () {
                    context.push('/profile');
                  },
                ),
              ],
            ),
          ),
        ): null,
      ),
    );
  }
}
