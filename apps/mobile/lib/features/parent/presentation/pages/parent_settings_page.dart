import 'package:flutter/material.dart';

class ParentSettingsPage extends StatelessWidget {
  const ParentSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: const Center(
        child: Text('Parent Settings', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
