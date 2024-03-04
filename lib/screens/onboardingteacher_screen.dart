import 'package:flutter/material.dart';
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Insira as informações abaixo para prosseguir com o cadastro de Professor',
              style: TextStyle(fontSize: 24),
            ),
            const Input(label: 'Nome Completo'),
            const Input(label: 'Data de Nascimento'),
            const Input(label: 'CPF'),
            const Input(label: 'Matéria'),
            const Input(label: 'Código do Professor'),
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
                            onPressed: () {}, child: const Text('Cadastrar'))),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
