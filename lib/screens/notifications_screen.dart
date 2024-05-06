import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:studee_educational/components/basescaffold_screen.dart';

class NoticationsScreen extends StatefulWidget {
  const NoticationsScreen({super.key});

  @override
  State<NoticationsScreen> createState() => _NoticationsScreenState();
}

class _NoticationsScreenState extends State<NoticationsScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      showAppBar: false,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 80,
                child: Container(
                    decoration: BoxDecoration(color: Colors.black),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                            onTap: () {},
                            child: Icon(
                              FontAwesomeIcons.arrowLeft,
                              color: Colors.white,
                            )),
                        Text(
                          'Notificações',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    )),
              ),
              Divider(),
              SizedBox(
                height: 20,
              ),
              Card(
                child: ListTile(
                  leading: Icon(FontAwesomeIcons.calendar),
                  title: Text(
                    'Design Digital',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Pesquisa dos tipos de imagem '),
                      SizedBox(
                        height: 4,
                      ),
                      Text('Entrega: 22/02/2022'),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
