import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool status = false;

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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.bolt,
                    size: 16,
                    color: Color(0xffF2B33D),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "Membro Gold",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffF29F05),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              )
            ]),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Celular",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                " (11) 99999-9999",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "E-mail",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "teste_test@gmail.com",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
        Divider(),
        ListTile(
          leading: Icon(FontAwesomeIcons.solidMoon),
          title: Text("Dark Mode",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
        ),
        FlutterSwitch(
            value: status,
            width: 100,
            activeColor: Colors.indigo,
            inactiveColor: Colors.grey,
            toggleColor: Colors.white,
            toggleSize: 20,
            borderRadius: 20,
            padding: 5,
            showOnOff: false,
            height: 50,
            onToggle: (val) {
              setState(() {
                status = val;
              });
            }),
      ]),
    );
  }
}
