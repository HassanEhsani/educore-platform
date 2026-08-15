import 'package:flutter/material.dart';

class ParentMessagesPage extends StatelessWidget {
  const ParentMessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Messages')),
      body: const Center(
        child: Text('Messages Center', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
