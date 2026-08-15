import 'package:flutter/material.dart';

class ParentChildrenPage extends StatelessWidget {
  const ParentChildrenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Children')),
      body: const Center(
        child: Text('Children Overview', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
