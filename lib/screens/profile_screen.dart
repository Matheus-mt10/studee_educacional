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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 18),
              child: Column(
                children: [
                  CircleAvatar(
                    // backgroundColor: Colors.black,
                    backgroundImage: NetworkImage(
                        "https://i.pinimg.com/originals/9e/d7/12/9ed7129ff1779c1cee7686c372714320.jpg"),
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
                    optionText: 'Edit profile',
                    location: '/',
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  OptionBtnProfile(
                    iconBtn: FontAwesomeIcons.a,
                    iconSize: 10,
                    optionText: 'Mudar Senha',
                    location: '',
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  OptionBtnProfile(
                    iconBtn: FontAwesomeIcons.a,
                    iconSize: 10,
                    optionText: 'Config. Gerais',
                    location: '',
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  OptionBtnProfile(
                    iconBtn: FontAwesomeIcons.a,
                    iconSize: 10,
                    optionText: 'Convide um amigo',
                    location: '',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
