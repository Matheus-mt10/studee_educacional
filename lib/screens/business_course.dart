import 'package:flutter/material.dart';

class BusinessCourse extends StatefulWidget {
  const BusinessCourse({super.key});

  @override
  State<BusinessCourse> createState() => _BusinessCourseState();
}

class _BusinessCourseState extends State<BusinessCourse> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [
        Center(child: Text("data"))
      ],),
    );
  }
}