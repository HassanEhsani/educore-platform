import 'package:flutter/material.dart';

class ParentGradesPage extends StatelessWidget {
  const ParentGradesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Grades')),
      body: const Center(
        child: Text('Student Grades', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
