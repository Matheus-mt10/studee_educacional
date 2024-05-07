import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ClassesScreen extends StatefulWidget {
  const ClassesScreen({super.key});

  @override
  State<ClassesScreen> createState() => _ClassesScreenState();
}

class _ClassesScreenState extends State<ClassesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          FontAwesomeIcons.arrowLeft,
          color: Colors.white,
        ),
        // title: Text(
        //   "Aulas",
        //   style: TextStyle(color: Colors.white),
        // ),
        centerTitle: true,
        actions: [
          Icon(
            FontAwesomeIcons.solidBell,
            color: Colors.white,
          )
        ],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70))),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(130),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bem-vindo de volta,",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('images/super.jpg'),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Text(
                  "Matheus",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Suas Matérias'),
            Container(
              width: 150,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1)),
              child: Row(
                children: [
                  Container(
                    color: Colors.amber,
                    height: 40,
                    width: 40,
                    child: Icon(FontAwesomeIcons.desktop),
                  ),
                  Text("dsdsdsds")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
