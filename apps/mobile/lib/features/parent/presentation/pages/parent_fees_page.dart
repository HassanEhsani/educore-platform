import 'package:flutter/material.dart';

class ParentFeesPage extends StatelessWidget {
  const ParentFeesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fees')),
      body: const Center(
        child: Text('Fee Payments', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
