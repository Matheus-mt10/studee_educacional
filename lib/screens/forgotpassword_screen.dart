import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:studee_educational/components/basescaffold_screen.dart';


class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      showAppBar: false,
      showBottomBar: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 25.0),
              child: Text(
                'Preencha os dados abaixo para solicitar a recuperação de senha',
                style: TextStyle(fontSize: 24),
              ),
            ),
            // Input(label: "Email", icon: Icon(FontAwesomeIcons.mailchimp), textIntenal: "Digite seu email"),
            SizedBox(
                width: 150,
                height: 50,
                child: FilledButton(
                    onPressed: () {}, child: const Text("Enviar"))),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                  'Você irá receber um e-mail no endereço informado acima contendo o procedimento para criar uma nova senha'),
            ),
            FilledButton(
                onPressed: () {
                  context.push('/');
                },
                child: const Text('Voltar'))
          ],
        ),
      ),
    );
  }
}
