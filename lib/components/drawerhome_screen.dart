import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerHome extends StatefulWidget {
  const DrawerHome({super.key});

  @override
  State<DrawerHome> createState() => _DrawerHomeState();
}

class _DrawerHomeState extends State<DrawerHome> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(
              child: Column(
            children: [
              Row(
                children: [Icon(Icons.account_circle), Text("Matheus Santana")],
              ),
            ],
          )),
          ListTile(
            leading: Icon(FontAwesomeIcons.graduationCap),
            title: Text("Aulas"),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.arrowUpRightDots),
            title: Text("Evolução"),
          ),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text("Calendário"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Configurações"),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Sair"),
          ),
        ],
      ),
    );
  }
}
