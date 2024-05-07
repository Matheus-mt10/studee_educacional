import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:studee_educational/components/Classes_btn.dart';

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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    'Suas Matérias',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClassesBtn(image: 'images/business.png', titleCard: 'Business'),
                ClassesBtn(
                    image: 'images/marketing.png', titleCard: 'Marketing'),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClassesBtn(image: 'images/design.png', titleCard: "Design"),
                ClassesBtn(
                    image: 'images/programming.png', titleCard: 'Programação'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
