import 'package:flutter/material.dart';

class StudentGradesPage extends StatelessWidget {
  const StudentGradesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Grades')),

      body: const Center(
        child: Text('Student Grades', style: TextStyle(fontSize: 22)),
      ),
    );
  }
}
