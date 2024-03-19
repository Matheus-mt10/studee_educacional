import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TaskCard extends StatelessWidget {
  final String matter;
  final String TaskDescript;
  const TaskCard({super.key, required this.matter, required this.TaskDescript});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              matter,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        subtitle: Text(TaskDescript),
        trailing:
            IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.calendar)),
      ),
    );
  }
}
