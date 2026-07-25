import 'package:flutter/material.dart';

class StudentSchedulePage extends StatelessWidget {
  const StudentSchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Schedule')),

      body: const Center(
        child: Text('Class Schedule', style: TextStyle(fontSize: 22)),
      ),
    );
  }
}
