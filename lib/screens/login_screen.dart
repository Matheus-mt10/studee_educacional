import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:studee_educational/components/basescaffold_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formField = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      showAppBar: false,
      showBottomBar: false,
      body: Form(
        key: _formField,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: Image.asset('images/studeeeee.png'),
            ),
            Text(
              "Bem vindo(a) de volta",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                label: Text("Login"),
                hintText: 'Digite seu email',
              ),
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                bool validEmail = RegExp(
                        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                    .hasMatch(value!);

                if (value.isEmpty) {
                  return "Entre com o seu email";
                }

                if (!validEmail) {
                  return "Entre com um email válido";
                }
                return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  label: Text("Senha"), hintText: 'Digite sua senha'),
              keyboardType: TextInputType.visiblePassword,
              controller: passController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Entre com a sua senha";
                }
                if (value.length < 6) {
                  return 'A senha deve conter ao menos 6 digitos';
                }
                return null;
              },
            ),

            // Input(label: "Login", internalText: 'Digite seu Email cadastrado'),
            // Input(label: "Senha", internalText: 'Digite sua senha'),
            TextButton(
                onPressed: () {
                  context.push('/EsqueciMinhaSenha');
                },
                child: const Text("Esqueceu a senha?")),
            SizedBox(
              height: 10,
            ),

            FilledButton(
              onPressed: () {
                context.push('/HomePage');
                if (_formField.currentState!.validate()) {
                  print('Sucess');
                  emailController.clear();
                  passController.clear();
                }
              },
              child: const Text(
                "Login",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
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
