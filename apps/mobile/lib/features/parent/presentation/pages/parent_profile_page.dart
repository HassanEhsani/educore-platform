import 'package:flutter/material.dart';

class ParentProfilePage extends StatelessWidget {
  const ParentProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: const Center(
        child: Text('Parent Profile', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
