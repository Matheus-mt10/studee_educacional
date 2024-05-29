import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BusinessClassesScreen extends StatefulWidget {
  const BusinessClassesScreen({super.key});

  @override
  State<BusinessClassesScreen> createState() => _BusinessClassesScreenState();
}

class _BusinessClassesScreenState extends State<BusinessClassesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Aulas e conteúdos",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Text(
              "Aulas de Business",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "09:00 am",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Icon(FontAwesomeIcons.solidBell)
                    ],
                  ),
                  Text(
                      "Vamos explorar os fundamentos dos negócios, abordando planejamento estratégico, análise de mercado, marketing, finanças e gestão de recursos humanos. Nosso objetivo é oferecer uma visão ampla e integrada do ambiente empresarial, utilizando casos práticos e teorias relevantes."),
                  Row(
                    children: [
                      Text('Sala 14'),
                      Icon(FontAwesomeIcons.locationDot),
                      Icon(FontAwesomeIcons.solidClock),
                      Text('1:30h')
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
