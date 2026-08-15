import 'package:flutter/material.dart';

class ParentAttendancePage extends StatelessWidget {
  const ParentAttendancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Attendance')),
      body: const Center(
        child: Text('Attendance Records', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
