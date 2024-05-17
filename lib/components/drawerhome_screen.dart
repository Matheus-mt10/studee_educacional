import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

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
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              child: InkWell(
                onTap: () {
                  context.push('/profile');
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 38,
                      backgroundImage: AssetImage('images/super.jpg'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Matheus Santana",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              )),
          ListTile(
            leading: Icon(FontAwesomeIcons.graduationCap),
            title: Text("Aulas"),
            onTap: () {
              context.push('/aulas');
            },
          ),
          const ListTile(
            leading: Icon(FontAwesomeIcons.arrowUpRightDots),
            title: Text("Evolução"),
          ),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text("Calendário"),
            onTap: () {
              context.push('/calendario');
            },
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text("Configurações"),
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text("Sair"),
            onTap: () {
              context.go('/');
            },
          ),
        ],
      ),
    );
  }
}
