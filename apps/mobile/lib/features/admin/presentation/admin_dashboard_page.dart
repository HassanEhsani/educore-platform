import 'package:flutter/material.dart';

import '../../../core/widgets/app_shell.dart';
import '../data/fake_admin_data.dart';
import '../data/admin_dashboard_data.dart';
import 'widgets/admin_header.dart';
import 'widgets/admin_stat_card.dart';

class AdminDashboardPage extends StatelessWidget {
  const AdminDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShell(
      title: 'Admin Dashboard',
      currentIndex: 0,
      onTap: (_) {},
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          AdminHeader(admin: FakeAdminData.admin),

          const SizedBox(height: 24),

          AdminStatCard(
            icon: Icons.people,
            title: 'Students',
            value: '${AdminDashboardData.summary.totalStudents}',
          ),

          const SizedBox(height: 16),

          AdminStatCard(
            icon: Icons.school,
            title: 'Teachers',
            value: '${AdminDashboardData.summary.totalTeachers}',
          ),

          const SizedBox(height: 16),

          AdminStatCard(
            icon: Icons.family_restroom,
            title: 'Parents',
            value: '${AdminDashboardData.summary.totalParents}',
          ),

          const SizedBox(height: 16),

          AdminStatCard(
            icon: Icons.attach_money,
            title: 'Monthly Revenue',
            value: '\$${AdminDashboardData.summary.monthlyRevenue}',
          ),
        ],
      ),
    );
  }
}
