import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:studee_educational/components/basescaffold_screen.dart';
import 'package:studee_educational/models/mocks/notification_dto.dart';

class NoticationsScreen extends StatefulWidget {
  const NoticationsScreen({super.key});

  @override
  State<NoticationsScreen> createState() => _NoticationsScreenState();
}

class _NoticationsScreenState extends State<NoticationsScreen> {
  List<NotificationDto> _notificationList = [
    NotificationDto(
        icon: Icon(FontAwesomeIcons.calendar),
        title: Text("Design - Tipografia "),
        subtitle: Text("Realizar a entrega na próxima aula")),
    NotificationDto(
        icon: Icon(FontAwesomeIcons.figma),
        title: Text("Design - Prototipagem com Figma "),
        subtitle: Text("Realizar a entrega na próxima aula")),
    NotificationDto(
        icon: Icon(FontAwesomeIcons.code),
        title: Text("Des. Front End - HTML e CSS "),
        subtitle: Text("Media-Queries - Adaptando a multíplos dispositivos")),
    NotificationDto(
        icon: Icon(FontAwesomeIcons.dev),
        title: Text("Des. Mobile - Conhecendo o Flutter "),
        subtitle: Text("Vamos dar início aos estudos no FrameWork Flutter")),
  ];

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
              ListView.builder(
                shrinkWrap: true,
                itemCount: _notificationList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Slidable(
                    startActionPane: ActionPane(
                      motion: StretchMotion(),
                      children: [
                        SlidableAction(
                          backgroundColor: Colors.black,
                          icon: FontAwesomeIcons.boxArchive,
                          label: 'Arquivar',
                          onPressed: (context) => _OnDimissed(),
                        ),
                      ],
                    ),
                    endActionPane:
                        ActionPane(motion: BehindMotion(), children: [
                      SlidableAction(
                        backgroundColor: Colors.red,
                        icon: FontAwesomeIcons.boxArchive,
                        label: 'Excluir',
                        onPressed: (context) => _OnDimissed(),
                      ),
                    ]),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 2.0, bottom: 2),
                      child: ListTile(
                        leading: _notificationList[index].icon,
                        title: _notificationList[index].title,
                        subtitle: _notificationList[index].subtitle,
                        
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _OnDimissed() {}
}
