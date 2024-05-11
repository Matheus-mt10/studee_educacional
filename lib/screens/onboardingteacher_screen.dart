import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:studee_educational/components/basescaffold_screen.dart';
import 'package:studee_educational/components/input.dart';

class OnboardingTeacher extends StatefulWidget {
  const OnboardingTeacher({super.key});

  @override
  State<OnboardingTeacher> createState() => _OnboardingTeacherState();
}

class _OnboardingTeacherState extends State<OnboardingTeacher> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      showAppBar: false,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Insira as informações abaixo para prosseguir com o cadastro de Professor',
                style: TextStyle(fontSize: 24),
              ),
              // Input(label: "Nome completo", icon: Icon(FontAwesomeIcons.a), textIntenal: "nome completo"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: SizedBox(
                          width: 120,
                          child: FilledButton(
                              onPressed: () {
                                context.push('/OnboardingPage');
                              },
                              child: const Text('Voltar'))),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: SizedBox(
                          width: 120,
                          child: FilledButton(
                              onPressed: () {},
                              child: const Text('Cadastrar'))),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
