import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:studee_educational/components/basescaffold_screen.dart';
import 'package:studee_educational/components/elevated_circle_btn.dart';
import 'package:studee_educational/components/task_card.dart';
import 'package:studee_educational/components/title.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;
  final urlImages = [
    'images/1.png',
    'images/2.png',
    'images/3.png',
    'images/4.png'
  ];

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider.builder(
                  itemCount: urlImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final urlImage = urlImages[index];
                    return buildImage(urlImage, index);
                  },
                  options: CarouselOptions(
                      onPageChanged: (index, reason) =>
                          setState(() => activeIndex = index),
                      height: 180,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 5),
                      enlargeCenterPage: true,
                      enlargeStrategy: CenterPageEnlargeStrategy.zoom)),
              const SizedBox(height: 32),
              TitleStyle(titleText: "Acesso Rápido", fontSize: 24),
              Container(
                height: 110,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    ElevatedCircleBtn(
                        icon: FontAwesomeIcons.calendarDay,
                        textBtn: "Entregas",
                        styleBtn: CircleBorder(),
                        padding: 10),
                    ElevatedCircleBtn(
                        icon: FontAwesomeIcons.listCheck,
                        textBtn: "Tarefas",
                        styleBtn: CircleBorder(),
                        padding: 10),
                    ElevatedCircleBtn(
                        icon: FontAwesomeIcons.usersLine,
                        textBtn: "Grupos",
                        styleBtn: CircleBorder(),
                        padding: 10),
                    ElevatedCircleBtn(
                        icon: FontAwesomeIcons.link,
                        textBtn: "Links",
                        styleBtn: CircleBorder(),
                        padding: 10),
                    ElevatedCircleBtn(
                        icon: FontAwesomeIcons.solidComments,
                        textBtn: "Chats",
                        styleBtn: CircleBorder(),
                        padding: 10),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TitleStyle(titleText: "Próximas Entregas", fontSize: 24),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 180,
                child: ListView(
                  children: [
                    TaskCard(
                        matter: "Design Digital",
                        TaskDescript: "Pesquisa dos tipos de imagem"),
                    TaskCard(
                        matter: "Marketing",
                        TaskDescript:
                            "Realizar pesquisa de Persona do produto"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildImage(String urlImage, int index) => Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
      margin: const EdgeInsets.symmetric(horizontal: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Image.asset(
          urlImage,
          fit: BoxFit.cover,
        ),
      ),
    );
