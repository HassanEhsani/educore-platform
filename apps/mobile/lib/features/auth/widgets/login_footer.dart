import 'package:flutter/material.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Divider(),
        SizedBox(height: 12),
        Text(
          '© 2026 EduCore Platform',
          style: TextStyle(color: Colors.grey, fontSize: 13),
        ),
        SizedBox(height: 4),
        Text('Powered by EduCore', style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
