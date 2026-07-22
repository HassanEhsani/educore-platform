import 'package:flutter/material.dart';

import '../../data/admin_dashboard_data.dart';

import '../widgets/admin_activity_card.dart';
import '../widgets/admin_business_card.dart';
import '../widgets/admin_growth_card.dart';
import '../widgets/admin_kpi_card.dart';
import '../widgets/admin_quick_actions.dart';
import '../widgets/admin_revenue_card.dart';
import '../widgets/admin_welcome_card.dart';

class AdminDashboardPage extends StatelessWidget {
  const AdminDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dashboard = AdminDashboardData.summary;

    return Scaffold(
      appBar: AppBar(title: const Text('Merchant Dashboard')),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const AdminWelcomeCard(),

            const SizedBox(height: 24),

            const Text(
              'Business Performance',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 16),

            GridView.count(
              shrinkWrap: true,

              physics: const NeverScrollableScrollPhysics(),

              crossAxisCount: 2,

              crossAxisSpacing: 12,

              mainAxisSpacing: 12,

              children: [
                AdminKpiCard(
                  icon: Icons.school,
                  title: 'Students',
                  value: dashboard.totalStudents.toString(),
                  subtitle: 'Active',
                ),

                AdminKpiCard(
                  icon: Icons.people,
                  title: 'Teachers',
                  value: dashboard.totalTeachers.toString(),
                  subtitle: 'Staff',
                ),

                AdminKpiCard(
                  icon: Icons.wifi,
                  title: 'ISP Users',
                  value: dashboard.ispUsers.toString(),
                  subtitle: 'Connected',
                ),

                AdminKpiCard(
                  icon: Icons.biotech,
                  title: 'Lab Tests',
                  value: dashboard.laboratoryTests.toString(),
                  subtitle: 'Completed',
                ),
              ],
            ),

            const SizedBox(height: 24),

            const Text(
              'Financial Overview',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 16),

            AdminRevenueCard(
              monthlyRevenue: dashboard.monthlyRevenue,

              yearlyRevenue: dashboard.yearlyRevenue,
            ),

            const SizedBox(height: 16),

            AdminGrowthCard(growth: 8.5),

            const SizedBox(height: 24),

            const Text(
              'Businesses',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 16),

            AdminBusinessCard(
              businesses: 3,

              users:
                  dashboard.totalStudents +
                  dashboard.totalParents +
                  dashboard.ispUsers,

              revenue: dashboard.totalBusinessRevenue,
            ),

            const SizedBox(height: 24),

            const AdminQuickActions(),

            const SizedBox(height: 24),

            const Text(
              'Recent Activities',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 16),

            const Column(
              children: [
                AdminActivityCard(
                  title: 'School payment received',

                  subtitle: 'Monthly tuition payment completed',

                  icon: Icons.payment,

                  time: 'Today',
                ),

                AdminActivityCard(
                  title: 'Financial report generated',

                  subtitle: 'Monthly revenue report updated',

                  icon: Icons.analytics,

                  time: 'Yesterday',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
