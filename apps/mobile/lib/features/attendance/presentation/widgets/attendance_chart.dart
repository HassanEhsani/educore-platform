import 'package:flutter/material.dart';

class AttendanceChart extends StatelessWidget {
  const AttendanceChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 180,
        child: Center(
          child: Icon(
            Icons.bar_chart,
            size: 80,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
