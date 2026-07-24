import 'package:flutter/material.dart';

class ManagerGradesPage extends StatelessWidget {
  const ManagerGradesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Grades')),

      body: const Center(
        child: Text('Grades Management', style: TextStyle(fontSize: 22)),
      ),
    );
  }
}
