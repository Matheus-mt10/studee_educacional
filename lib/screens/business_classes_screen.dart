import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BusinessClassesScreen extends StatefulWidget {
  const BusinessClassesScreen({super.key});

  @override
  State<BusinessClassesScreen> createState() => _BusinessClassesScreenState();
}

class _BusinessClassesScreenState extends State<BusinessClassesScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Aulas e conteúdos", style: TextStyle(color: Colors.white),),
      backgroundColor: Colors.black,
      ) ,
    );
  }
}
