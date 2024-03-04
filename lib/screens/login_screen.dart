import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:studee_educational/components/basescaffold_screen.dart';
import 'package:studee_educational/components/input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 24.0),
              child: Text(
                "Bem vindo(a) ao Studee, faça login para continuar",
                style: TextStyle(fontSize: 28),
              ),
            ),
            const Input(label: "Login"),
            const Input(
              label: "Senha",
              obsText: true,
            ),
            SizedBox(
              width: 200,
              child: FilledButton(
                onPressed: () {
                  context.push('/HomePage');
                },
                child: const Text("Login"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextButton(
                      onPressed: () {}, child: const Text("Esqueceu a senha?")),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: TextButton(
                      onPressed: () {
                        context.push('/OnboardingPage');
                      },
                      child: const Text("Cadastre-se")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
