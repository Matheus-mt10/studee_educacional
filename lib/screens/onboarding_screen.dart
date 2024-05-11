import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:studee_educational/components/basescaffold_screen.dart';
import 'package:studee_educational/components/input.dart';
import 'package:studee_educational/components/subtitle.dart';
import 'package:studee_educational/components/title.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
        showAppBar: false,
        showBottomBar: false,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleStyle(
                  titleText: "Vamos criar sua conta no Studee", fontSize: 30),
              SizedBox(
                height: 10,
              ),
              Subtitle(
                  subtitle:
                      "Por favor, insira as informações abaixo para criar seu login"),
              SizedBox(
                height: 50,
              ),
              Input(label: "Nome", internalText: 'Nome Completo'),
              Input(label: 'Email', internalText: 'Email')
            ],
          ),
        ));
  }
}
