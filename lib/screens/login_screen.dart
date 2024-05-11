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
      showAppBar: false,
      showBottomBar: false,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
            ),
            SizedBox(
              width: 300,
              child: Image.asset('images/studeeeee.png'),
            ),
            Text(
              "Bem vindo(a) de volta",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
            ),
            Input(label: "Login", internalText: 'Digite seu Email cadastrado'),
            Input(label: "Senha", internalText: 'Digite sua senha'),
            TextButton(
                onPressed: () {
                  context.push('/EsqueciMinhaSenha');
                },
                child: const Text("Esqueceu a senha?")),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 380,
              height: 60,
              child: FilledButton(
                onPressed: () {
                  context.push('/HomePage');
                },
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  context.push('/OnboardingPage');
                },
                child: const Text("Cadastre-se")),
          ],
        ),
      ),
    );
  }
}
