import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/theme/app_spacing.dart';
import '../data/fake_attendance.dart';
import 'widgets/attendance_card.dart';
import 'widgets/attendance_chart.dart';
import 'widgets/attendance_summary.dart';

class AttendancePage extends StatelessWidget {
  const AttendancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Attendance')),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          children: [
            const AttendanceSummary(),

            const Gap(AppSpacing.lg),

            const AttendanceChart(),

            const Gap(AppSpacing.lg),

            Expanded(
              child: ListView.builder(
                itemCount: demoAttendance.length,
                itemBuilder: (context, index) {
                  return AttendanceCard(attendance: demoAttendance[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
