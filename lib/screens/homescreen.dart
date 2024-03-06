import 'package:flutter/material.dart';
import 'package:studee_educational/components/basescaffold_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const BaseScaffold(
      body: Center(
        child: Column(
          children: [
            Card(
                color: Colors.amber,
                shadowColor: Colors.black12,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text('data'),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
