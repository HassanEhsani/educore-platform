import 'package:flutter/material.dart';

import '../../domain/manager.dart';

class ManagerHeader extends StatelessWidget {
  final Manager manager;

  const ManagerHeader({super.key, required this.manager});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 34,
              child: Icon(Icons.admin_panel_settings, size: 34),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    manager.name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(manager.schoolName),
                  Text('School Manager'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
