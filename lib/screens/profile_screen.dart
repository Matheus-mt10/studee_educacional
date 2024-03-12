import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:studee_educational/components/big_square_btn.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: const [Icon(FontAwesomeIcons.solidBell)],
      ),
      body: const SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 70,
                ),
                Text(
                  "Matheus Santana",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Análise e desenvolvimento de sistemas",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    BigSquareBtn(
                      icon: FontAwesomeIcons.m,
                    )],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
