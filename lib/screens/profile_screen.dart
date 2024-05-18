import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 50),
        Container(
          child: Center(
            child: Column(children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/super.jpg'),
                radius: 70,
              ),
              SizedBox(height: 20),
              Text(
                "Matheus Santana",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(FontAwesomeIcons.a),
                  Text(
                    "Membro Gold",
                    style: TextStyle(fontSize: 20, color: Colors.purple),
                  ),
                ],
              )
            ]),
          ),
        )
      ]),
    );
  }
}
