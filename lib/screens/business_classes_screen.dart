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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "Aulas de Business",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("hghgjhgjg"),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "09:00 am",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Icon(
                            FontAwesomeIcons.solidBell,
                            size: 16,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          "Vamos explorar os fundamentos dos negócios, abordando planejamento estratégico, análise de mercado, marketing, finanças e gestão de recursos humanos. Nosso objetivo é oferecer uma visão ampla e integrada do ambiente empresarial, utilizando casos práticos e teorias relevantes.",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Sala 14',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Icon(
                            FontAwesomeIcons.locationDot,
                            size: 16,
                          ),
                          SizedBox(
                            width: 200,
                          ),
                          Icon(
                            FontAwesomeIcons.solidClock,
                            size: 16,
                          ),
                          Text(
                            '1:30h',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
