import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                height: 36,
              ),
              Input(label: 'Email', internalText: 'Digite o seu Email'),
              FilledButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => CustomAlertDialog());
                  },
                  child: Text("Continuar")),
              TextButton.icon(
                  icon: Icon(
                    FontAwesomeIcons.chevronLeft,
                    size: 16,
                  ),
                  onPressed: () {
                    context.go('/');
                  },
                  label: Text("Voltar para o login"))
            ],
          ),
        ));
  }
}

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(2)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'images/AlertIcon.png',
                scale: 5,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Foi envido um link com as informações para redefinição no email informado",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStatePropertyAll(Colors.indigo)),
                          onPressed: () {
                            context.go('/');
                          },
                          child: Text(
                            "Entendi",
                            style: TextStyle(color: Colors.white),
                          ))),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.indigo)),
                        onPressed: () {},
                        child: Text(
                          "Enviar novamente",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
