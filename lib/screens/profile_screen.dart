import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:studee_educational/components/basescaffold_screen.dart';
import 'package:studee_educational/components/option_btn_profile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const BaseScaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 18),
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
                  height: 25,
                ),
                OptionBtnProfile(
                  iconBtn: FontAwesomeIcons.a,
                  iconSize: 10,
                  optionText: 'Dark Modeeee',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
