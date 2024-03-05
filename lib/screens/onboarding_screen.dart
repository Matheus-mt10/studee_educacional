import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:studee_educational/components/basescaffold_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: SizedBox(
                width: 300,
                height: 60,
                child: FilledButton(
                    onPressed: () {
                      context.push('/cadastroProfessor');
                    },
                    child: const Text(
                      'Eu sou Professor',
                      style: TextStyle(fontSize: 18),
                    ))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: SizedBox(
                width: 300,
                height: 60,
                child: FilledButton(
                    onPressed: () {
                      context.push('/cadastroAluno');
                    },
                    child: const Text(
                      'Eu sou Aluno',
                      style: TextStyle(fontSize: 18),
                    ))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: SizedBox(
                width: 300,
                height: 60,
                child: FilledButton(
                    onPressed: () {
                      context.push('/EsqueciMinhaSenha');
                    },
                    child: const Text(
                      'Esqueci minha senha',
                      style: TextStyle(fontSize: 18),
                    ))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: SizedBox(
                width: 150,
                height: 60,
                child: FilledButton(
                    onPressed: () {
                      context.go('/');
                    },
                    child: const Text(
                      'Voltar',
                      style: TextStyle(fontSize: 18),
                    ))),
          ),
        ],
      ),
    ));
  }
}
