import 'package:flutter/material.dart';
import 'package:studee_educational/components/basescaffold_screen.dart';
import 'package:studee_educational/components/subtitle.dart';
import 'package:studee_educational/components/title.dart';
import 'package:studee_educational/services/authentication_service.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _formField = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  AuthenticationService _authservice = AuthenticationService();

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
        showAppBar: false,
        showBottomBar: false,
        body: Center(
          child: Form(
            key: _formField,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TitleStyle(
                    titleText: "Vamos criar sua conta no Studee", fontSize: 30),
                SizedBox(
                  height: 10,
                ),
                Subtitle(
                    subtitle:
                        "Por favor, insira as informações abaixo para criar seu login"),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      label: Text(
                    "Nome completo",
                    style: TextStyle(fontSize: 18),
                  )),
                  controller: nameController,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      label: Text(
                    "Email",
                    style: TextStyle(fontSize: 18),
                  )),
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      label: Text(
                    "Senha",
                    style: TextStyle(fontSize: 18),
                  )),
                  keyboardType: TextInputType.visiblePassword,
                  controller: passController,
                ),
                SizedBox(
                  height: 10,
                ),
                FilledButton(
                    onPressed: () {
                      String name = nameController.text;
                      String email = emailController.text;
                      String password = passController.text;
                      print(
                          "${nameController.text},  ${emailController.text}, ${passController.text}");
                      _authservice.RegisterUser(
                          name: name, email: email, password: password);
                    },
                    child: Text("Cadastrar"))

                // Input(label: "Nome", internalText: 'Nome Completo'),
                // Input(label: 'Email', internalText: 'Email'),
                // Input(label: 'Senha', internalText: 'Informe sua senha')
              ],
            ),
          ),
        ));
  }
}
