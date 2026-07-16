import 'package:flutter/material.dart';

import '../../domain/parent.dart';

class ParentHeader extends StatelessWidget {
  final Parent parent;

  const ParentHeader({super.key, required this.parent});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 34,
              child: Icon(Icons.family_restroom, size: 34),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    parent.name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 4),
                  Text('Student: ${parent.studentName}'),
                  Text(parent.studentClass),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
