import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:studee_educational/components/basescaffold_screen.dart';
import 'package:studee_educational/components/input.dart';

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Esqueceu a senha?",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "Entre com o seu email, para que possamos enviar as instruções para redefinir a senha.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 40,
              ),
              Input(label: 'Email', internalText: 'Digite o seu Email'),
              FilledButton(onPressed: () {}, child: Text("Continuar"))
            ],
          ),
        ));
  }
}
