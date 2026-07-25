import 'package:flutter/material.dart';

class StudentAnnouncementsPage extends StatelessWidget {
  const StudentAnnouncementsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Announcements')),

      body: const Center(
        child: Text('School Announcements', style: TextStyle(fontSize: 22)),
      ),
    );
  }
}
