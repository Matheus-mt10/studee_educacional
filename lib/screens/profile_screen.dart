import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:studee_educational/components/profile_row_options.dart';

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
        SizedBox(height: 70),
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
        SizedBox(
          height: 6,
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
        SizedBox(
          height: 10,
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Container(
            // color: const Color.fromARGB(196, 158, 158, 158),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10),
                  child: Icon(FontAwesomeIcons.solidMoon),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 180.0),
                  child: Text(
                    "Dark Mode",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                FlutterSwitch(
                    value: status,
                    width: 60,
                    height: 30,
                    toggleSize: 20,
                    borderRadius: 14,
                    activeColor: Colors.indigo,
                    inactiveColor: Colors.grey,
                    showOnOff: false,
                    onToggle: (val) {
                      setState(() {
                        status = val;
                      });
                    })
              ],
            ),
          ),
        ),
        Divider(),
        // Divisão segunda linha
        ProfileRowOptions(
          icon: FontAwesomeIcons.key,
          title: 'Conta',
          btn: FontAwesomeIcons.chevronRight,
          pRigth: 230,
          pRightBtn: 15,
        ),
        Divider(),
        ProfileRowOptions(
          icon: FontAwesomeIcons.lock,
          title: 'Privacidade',
          btn: FontAwesomeIcons.chevronRight,
          pRigth: 174,
          pRightBtn: 15,
        ),
        Divider(),
        ProfileRowOptions(
          icon: FontAwesomeIcons.heart,
          title: 'Convide um amigo',
          btn: FontAwesomeIcons.chevronRight,
          pRigth: 110,
          pRightBtn: 15,
        ),
        Divider(),
        ProfileRowOptions(
          icon: FontAwesomeIcons.circleQuestion,
          title: "Ajuda",
          btn: FontAwesomeIcons.chevronRight,
          pRigth: 230,
          pRightBtn: 15,
        )
      ]),
    );
  }
}
