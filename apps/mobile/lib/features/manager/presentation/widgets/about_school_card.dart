import 'package:flutter/material.dart';

import '../../domain/entities/manager_settings.dart';

class AboutSchoolCard extends StatelessWidget {
  final ManagerSettings settings;

  const AboutSchoolCard({super.key, required this.settings});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'School Information',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 16),

            ListTile(
              leading: const Icon(Icons.school_outlined),
              title: Text(settings.schoolName),
              subtitle: Text(settings.schoolAddress),
            ),
          ],
        ),
      ),
    );
  }
}
