import 'package:flutter/material.dart';

import '../../../core/widgets/app_shell.dart';

import '../data/admin_analytics_data.dart';

import 'widgets/admin_activity_card.dart';
import 'widgets/admin_business_card.dart';
import 'widgets/admin_growth_card.dart';
import 'widgets/admin_kpi_card.dart';
import 'widgets/admin_quick_actions.dart';
import 'widgets/admin_revenue_card.dart';
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
      title: 'Merchant Dashboard',
      currentIndex: 0,
      onTap: (_) {},
      routes: routes,
      destinations: destinations,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AdminWelcomeCard(),

            const SizedBox(height: 24),

            _DashboardSection(
              title: 'Business Performance',
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: [
                  AdminKpiCard(
                    icon: Icons.school_outlined,
                    title: 'Students',
                    value: '${analytics.activeStudents}',
                    subtitle: 'Active',
                  ),

                  AdminKpiCard(
                    icon: Icons.people_outline,
                    title: 'Teachers',
                    value: '${analytics.activeTeachers}',
                    subtitle: 'Staff',
                  ),

                  AdminKpiCard(
                    icon: Icons.wifi_outlined,
                    title: 'ISP Users',
                    value: '430',
                    subtitle: 'Connected',
                  ),

                  AdminKpiCard(
                    icon: Icons.biotech_outlined,
                    title: 'Laboratory',
                    value: '320',
                    subtitle: 'Tests',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            _DashboardSection(
              title: 'Financial Overview',
              child: Column(
                children: [
                  AdminRevenueCard(
                    monthlyRevenue: analytics.monthlyRevenue,
                    yearlyRevenue: analytics.yearlyRevenue,
                  ),

                  const SizedBox(height: 16),

                  AdminGrowthCard(growth: analytics.userGrowth),
                ],
              ),
            ),

            const SizedBox(height: 24),

            _DashboardSection(
              title: 'Managed Businesses',
              child: AdminBusinessCard(
                businesses: analytics.totalBusinesses,
                users: analytics.totalUsers,
                revenue: analytics.monthlyRevenue,
              ),
            ),

            const SizedBox(height: 24),

            _DashboardSection(
              title: 'Quick Actions',
              child: const AdminQuickActions(),
            ),

            const SizedBox(height: 24),

            _DashboardSection(
              title: 'Recent Activities',
              child: const Column(
                children: [
                  AdminActivityCard(
                    title: 'School payment received',
                    subtitle: 'Monthly tuition payment completed',
                    icon: Icons.payment_outlined,
                    time: 'Today',
                  ),

                  AdminActivityCard(
                    title: 'Financial report generated',
                    subtitle: 'Business revenue summary updated',
                    icon: Icons.analytics_outlined,
                    time: 'Yesterday',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DashboardSection extends StatelessWidget {
  final String title;
  final Widget child;

  const _DashboardSection({required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 16),

        child,
      ],
    );
  }
}
