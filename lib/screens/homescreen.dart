import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:studee_educational/components/basescaffold_screen.dart';
import 'package:studee_educational/components/elevated_circle_btn.dart';
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
    'https://images.unsplash.com/photo-1511919884226-fd3cad34687c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1542362567-b07e54358753?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1592198084033-aade902d1aae?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1494976388531-d1058494cdd8?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
  ];

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: Center(
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
                    enlargeStrategy: CenterPageEnlargeStrategy.height)),
            const SizedBox(height: 32),
            TitleStyle(titleText: "Acesso Rápido", fontSize: 24),
            Container(
              height: 110,
              child: ListView(
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
          ],
        ),
      ),
    );
  }
}

Widget buildImage(String urlImage, int index) => Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      color: Colors.grey,
      child: Image.network(
        urlImage,
        fit: BoxFit.cover,
      ),
    );
