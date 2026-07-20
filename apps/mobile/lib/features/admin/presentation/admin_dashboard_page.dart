import 'package:flutter/material.dart';

import '../../../core/widgets/app_shell.dart';

import '../data/admin_analytics_data.dart';
import '../data/fake_admin_data.dart';

import 'widgets/admin_activity_card.dart';
import 'widgets/admin_business_card.dart';
import 'widgets/admin_growth_card.dart';
import 'widgets/admin_header.dart';
import 'widgets/admin_kpi_card.dart';
import 'widgets/admin_quick_actions.dart';
import 'widgets/admin_revenue_card.dart';
import 'widgets/admin_system_health_card.dart';
import 'widgets/admin_welcome_card.dart';

class AdminDashboardPage extends StatelessWidget {
  const AdminDashboardPage({super.key});

  static const List<String> routes = [
    '/admin',
    '/admin/notifications',
    '/admin/profile',
    '/admin/settings',
  ];

  static const List<NavigationDestination> destinations = [
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
    final analytics = AdminAnalyticsData.analytics;

    return AppShell(
      title: 'Admin Dashboard',

      currentIndex: 0,

      onTap: (_) {},

      routes: routes,

      destinations: destinations,

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            AdminWelcomeCard(admin: FakeAdminData.admin),

            const SizedBox(height: 20),

            GridView.count(
              shrinkWrap: true,

              physics: const NeverScrollableScrollPhysics(),

              crossAxisCount: 2,

              children: [
                AdminKpiCard(
                  icon: Icons.people,
                  title: 'Users',
                  value: '${analytics.totalUsers}',
                  subtitle: 'Active users',
                ),

                AdminKpiCard(
                  icon: Icons.business,
                  title: 'Businesses',
                  value: '${analytics.totalBusinesses}',
                  subtitle: 'Companies',
                ),
              ],
            ),

            const SizedBox(height: 20),

            AdminRevenueCard(
              monthlyRevenue: analytics.monthlyRevenue,
              yearlyRevenue: analytics.yearlyRevenue,
            ),

            const SizedBox(height: 20),

            AdminGrowthCard(growth: analytics.userGrowth),

            const SizedBox(height: 20),

            AdminSystemHealthCard(uptime: analytics.systemUptime),

            const SizedBox(height: 20),

            const AdminQuickActions(),

            const SizedBox(height: 20),

            const AdminBusinessCard(),

            const SizedBox(height: 20),

            const AdminActivityCard(
              title: 'New school registered',
              subtitle: 'EduCore branch added',
              icon: Icons.business,
            ),
          ],
        ),
      ),
    );
  }
}
