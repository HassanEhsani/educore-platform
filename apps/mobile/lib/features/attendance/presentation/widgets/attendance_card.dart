import 'package:flutter/material.dart';

import '../../domain/attendance.dart';

class AttendanceCard extends StatelessWidget {
  final Attendance attendance;

  const AttendanceCard({super.key, required this.attendance});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          attendance.present ? Icons.check_circle : Icons.cancel,
          color: attendance.present ? Colors.green : Colors.red,
        ),
        title: Text(attendance.subject),
        subtitle: Text(attendance.date),
        trailing: Text(attendance.present ? 'Present' : 'Absent'),
      ),
    );
  }
}
