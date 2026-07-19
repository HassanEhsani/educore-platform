import 'package:flutter/material.dart';

class DividerText extends StatelessWidget {
  final String text;

  const DividerText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            text,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ),
        const Expanded(child: Divider()),
      ],
    );
  }
}
