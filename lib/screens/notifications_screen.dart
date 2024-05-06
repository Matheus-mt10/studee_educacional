import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
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
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 90,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          height: 30,
                          width: 30,
                          child: InkWell(
                              onTap: () {
                                context.push('/homepage');
                              },
                              child: Icon(
                                FontAwesomeIcons.arrowLeft,
                                color: Colors.black,
                                size: 14,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Notificações',
                        style: TextStyle(color: Colors.black, fontSize: 26),
                      ),
                      Divider(
                        thickness: 2,
                      )
                    ],
                  ),
                ),
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
