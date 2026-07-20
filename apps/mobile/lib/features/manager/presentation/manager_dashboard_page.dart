import 'package:flutter/material.dart';

import '../../../../core/widgets/app_shell.dart';
import '../data/manager_dashboard_data.dart';
import 'widgets/dashboard_stat_card.dart';

class ManagerDashboardPage extends StatelessWidget {
  const ManagerDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final summary = ManagerDashboardData.summary;

    return AppShell(
      title: 'Manager Dashboard',
      currentIndex: 0,
      onTap: (_) {},
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          DashboardStatCard(
            icon: Icons.people,
            title: 'Students',
            value: summary.students.toString(),
            color: Colors.blue,
          ),

          const SizedBox(height: 16),

          DashboardStatCard(
            icon: Icons.school,
            title: 'Teachers',
            value: summary.teachers.toString(),
            color: Colors.green,
          ),

          const SizedBox(height: 16),

          DashboardStatCard(
            icon: Icons.attach_money,
            title: 'Monthly Revenue',
            value: '\$${summary.monthlyRevenue.toStringAsFixed(0)}',
            color: Colors.orange,
          ),

          const SizedBox(height: 16),

          DashboardStatCard(
            icon: Icons.event_available,
            title: 'Attendance',
            value: '${summary.attendance.toStringAsFixed(0)}%',
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}
