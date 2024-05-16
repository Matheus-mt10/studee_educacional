import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:studee_educational/components/basescaffold_screen.dart';


class OnboardingStudent extends StatefulWidget {
  const OnboardingStudent({super.key});

  @override
  State<OnboardingStudent> createState() => _OnboardingStudentState();
}

class _OnboardingStudentState extends State<OnboardingStudent> {
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
                'Insira as informações abaixo para prosseguir com o cadastro de Aluno',
                style: TextStyle(fontSize: 24),
              ),
              // Input(label: "Nome", icon: Icon(FontAwesomeIcons.a), textIntenal: "Digite seu no,e"),
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
