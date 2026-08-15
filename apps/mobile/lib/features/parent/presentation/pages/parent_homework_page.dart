import 'package:flutter/material.dart';

class ParentHomeworkPage extends StatelessWidget {
  const ParentHomeworkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Homework')),
      body: const Center(
        child: Text('Homework Tracking', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
