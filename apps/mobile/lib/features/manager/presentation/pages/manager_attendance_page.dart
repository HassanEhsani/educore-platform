import 'package:flutter/material.dart';

class ManagerAttendancePage extends StatelessWidget {
  const ManagerAttendancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Attendance')),

      body: const Center(
        child: Text('Attendance Management', style: TextStyle(fontSize: 22)),
      ),
    );
  }
}
