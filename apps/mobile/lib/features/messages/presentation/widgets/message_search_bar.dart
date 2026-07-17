import 'package:flutter/material.dart';

class MessageSearchBar extends StatelessWidget {
  const MessageSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        hintText: 'Search messages',
        border: OutlineInputBorder(),
      ),
    );
  }
}
