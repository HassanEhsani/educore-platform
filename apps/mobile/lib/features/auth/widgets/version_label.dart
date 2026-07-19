import 'package:flutter/material.dart';

class VersionLabel extends StatelessWidget {
  const VersionLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Version 1.0.0',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 12, color: Colors.grey),
    );
  }
}
