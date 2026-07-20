// lib/features/admin/presentation/admin_dashboard_page.dart

import 'package:flutter/material.dart';

import '../../../core/widgets/app_shell.dart';
import '../data/admin_dashboard_data.dart';
import '../data/fake_admin_data.dart';
import 'widgets/admin_header.dart';
import 'widgets/admin_stat_card.dart';
import 'widgets/admin_business_card.dart';
import 'widgets/admin_activity_card.dart';

class AdminDashboardPage extends StatelessWidget {
  const AdminDashboardPage({super.key});
  static const List<String> _routes = [
    '/admin',
    '/admin/notifications',
    '/admin/profile',
    '/admin/settings',
  ];

  static const List<NavigationDestination> _destinations = [
    NavigationDestination(
      icon: Icon(Icons.dashboard_outlined),
      selectedIcon: Icon(Icons.dashboard),
      label: 'Dashboard',
    ),
    NavigationDestination(
      icon: Icon(Icons.notifications_outlined),
      selectedIcon: Icon(Icons.notifications),
      label: 'Notifications',
    ),
    NavigationDestination(
      icon: Icon(Icons.person_outline),
      selectedIcon: Icon(Icons.person),
      label: 'Profile',
    ),
    NavigationDestination(
      icon: Icon(Icons.settings_outlined),
      selectedIcon: Icon(Icons.settings),
      label: 'Settings',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final summary = AdminDashboardData.summary;

    return AppShell(
      title: 'Admin Dashboard',
      currentIndex: 0,
      onTap: (_) {},
      destinations: _destinations,
      routes: _routes,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AdminHeader(admin: FakeAdminData.admin),

            const SizedBox(height: 24),

            Text(
              'Business Overview',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 16),

            const AdminBusinessCard(),

            const SizedBox(height: 24),

            Text(
              'System Statistics',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 16),

            AdminStatCard(
              icon: Icons.people,
              title: 'Total Students',
              value: '${summary.totalStudents}',
            ),

            AdminStatCard(
              icon: Icons.school,
              title: 'Total Teachers',
              value: '${summary.totalTeachers}',
            ),

            AdminStatCard(
              icon: Icons.family_restroom,
              title: 'Total Parents',
              value: '${summary.totalParents}',
            ),

            AdminStatCard(
              icon: Icons.attach_money,
              title: 'Monthly Revenue',
              value: '\$${summary.monthlyRevenue}',
            ),

            const SizedBox(height: 24),

            Text(
              'Recent Activities',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 16),

            const AdminActivityCard(
              title: 'New school registered',
              subtitle: 'EduCore Branch added today',
              icon: Icons.business,
            ),

            const AdminActivityCard(
              title: '120 new students enrolled',
              subtitle: 'Enrollment updated this week',
              icon: Icons.person_add,
            ),

            const AdminActivityCard(
              title: 'Monthly report generated',
              subtitle: 'Financial report is ready',
              icon: Icons.analytics,
            ),
          ],
        ),
      ),
    );
  }
}
