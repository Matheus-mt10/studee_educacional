import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:studee_educational/models/mocks/config_accessibility_Dto.dart';
import 'package:studee_educational/models/mocks/config_content_dto.dart';
import 'package:studee_educational/models/mocks/config_preffer_dto.dart';

class ConfigurationScreen extends StatefulWidget {
  const ConfigurationScreen({super.key});

  @override
  State<ConfigurationScreen> createState() => _ConfigurationScreenState();
}

class _ConfigurationScreenState extends State<ConfigurationScreen> {
  final List<ConfigContentDto> _configContent = [
    ConfigContentDto(
        icon: Icon(FontAwesomeIcons.solidHeart), title: "Favoritos"),
    ConfigContentDto(icon: Icon(FontAwesomeIcons.download), title: "Downlods"),
    ConfigContentDto(
        icon: Icon(FontAwesomeIcons.clock), title: "Assistir mais tarde"),
  ];

  final List<ConfigPrefferDto> _configPreffer = [
    ConfigPrefferDto(icon: Icon(FontAwesomeIcons.globe), title: "Idioma"),
    ConfigPrefferDto(
        icon: Icon(FontAwesomeIcons.solidMoon), title: "Dark Mode"),
    ConfigPrefferDto(
        icon: Icon(FontAwesomeIcons.wifi), title: "Download somente via Wifi"),
  ];

  final List<ConfigAccessibilityDto> _configAcess = [
    ConfigAccessibilityDto(
        icon: Icon(FontAwesomeIcons.universalAccess), title: 'Accessibility'),
    ConfigAccessibilityDto(
        icon: Icon(FontAwesomeIcons.ring), title: 'Notificações'),
    ConfigAccessibilityDto(
        icon: Icon(FontAwesomeIcons.comment), title: 'Feedbacks'),
    ConfigAccessibilityDto(
        icon: Icon(FontAwesomeIcons.star), title: 'Avalie nosso App'),
    ConfigAccessibilityDto(icon: Icon(FontAwesomeIcons.circle), title: 'Ajuda'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push('/homePage');
        },
        child: Icon(
          FontAwesomeIcons.house,
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Card(
                color: Colors.black,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('images/super.jpg'),
                    radius: 30,
                  ),
                  title: Text(
                    "Matheus Santana",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  subtitle: Text(
                    'supershockoficial@shock.com',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Conteúdo",
                        style: TextStyle(
                            fontSize: 24,
                            color: const Color.fromARGB(255, 78, 78, 78),
                            fontWeight: FontWeight.w600),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: _configContent.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            leading: _configContent[index].icon,
                            title: Text(
                              _configContent[index].title,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 20),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        "Prerências",
                        style: TextStyle(
                            fontSize: 24,
                            color: const Color.fromARGB(255, 78, 78, 78),
                            fontWeight: FontWeight.w600),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: _configPreffer.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            leading: _configPreffer[index].icon,
                            title: Text(
                              _configPreffer[index].title,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 20),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        "Acessibilidade",
                        style: TextStyle(
                            fontSize: 24,
                            color: const Color.fromARGB(255, 78, 78, 78),
                            fontWeight: FontWeight.w600),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: _configAcess.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            leading: _configAcess[index].icon,
                            title: Text(
                              _configAcess[index].title,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 20),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
