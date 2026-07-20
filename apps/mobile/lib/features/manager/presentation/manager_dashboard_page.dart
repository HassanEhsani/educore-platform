import 'package:flutter/material.dart';

import '../../../../core/widgets/app_shell.dart';
import '../widgets/dashboard_stat_card.dart';

class ManagerDashboardPage extends StatelessWidget {
  const ManagerDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShell(
      title: 'Manager Dashboard',
      currentIndex: 0,
      onTap: (_) {},
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          DashboardStatCard(
            icon: Icons.people,
            title: 'Students',
            value: '1,245',
            color: Colors.blue,
          ),

          SizedBox(height: 16),

          DashboardStatCard(
            icon: Icons.school,
            title: 'Teachers',
            value: '82',
            color: Colors.green,
          ),

          SizedBox(height: 16),

          DashboardStatCard(
            icon: Icons.attach_money,
            title: 'Monthly Revenue',
            value: '\$18,450',
            color: Colors.orange,
          ),

          SizedBox(height: 16),

          DashboardStatCard(
            icon: Icons.event_available,
            title: 'Attendance',
            value: '96%',
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}
