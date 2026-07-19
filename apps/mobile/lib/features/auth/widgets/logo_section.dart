import 'package:flutter/material.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        FlutterLogo(size: 90),
        SizedBox(height: 16),
        Text(
          'EduCore',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 6),
        Text('School Management Platform'),
      ],
    );
  }
}
