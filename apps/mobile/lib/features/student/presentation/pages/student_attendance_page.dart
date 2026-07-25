import 'package:flutter/material.dart';

class StudentAttendancePage extends StatelessWidget {
  const StudentAttendancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Attendance')),

      body: const Center(
        child: Text('Attendance History', style: TextStyle(fontSize: 22)),
      ),
    );
  }
}
