// lib/features/manager/presentation/manager_dashboard_body.dart

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/app_spacing.dart';
import '../data/fake_manager_data.dart';
import '../data/manager_dashboard_data.dart';
import 'widgets/manager_header.dart';
import 'widgets/quick_action_card.dart';
import 'widgets/recent_activity_card.dart';
import 'widgets/statistics_card.dart';

class ManagerDashboardBody extends StatelessWidget {
  const ManagerDashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    final summary = ManagerDashboardData.summary;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ManagerHeader(manager: demoManager),

          const Gap(24),

          _revenueCard(),

          const Gap(24),

          Text(
            'Business Overview',
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),

          const Gap(12),

          _businessCard(
            icon: Icons.school,
            title: 'School',
            subtitle: '1250 Students',
            value: '\$25,000',
          ),

          _businessCard(
            icon: Icons.wifi,
            title: 'ISP',
            subtitle: '430 Active Users',
            value: '\$8,500',
          ),

          _businessCard(
            icon: Icons.biotech,
            title: 'Laboratory',
            subtitle: '320 Tests',
            value: '\$4,200',
          ),

          const Gap(24),

          Text(
            'School Performance',
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),

          const Gap(12),

          StatisticsCard(
            icon: Icons.people,
            title: 'Students',
            value: '${summary.students}',
          ),

          StatisticsCard(
            icon: Icons.school,
            title: 'Teachers',
            value: '${summary.teachers}',
          ),

          StatisticsCard(
            icon: Icons.fact_check,
            title: 'Attendance',
            value: '${summary.attendance}%',
          ),

          const Gap(24),

          Text(
            'Quick Actions',
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),

          const Gap(12),

          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            children: [
              QuickActionCard(
                icon: Icons.person_add,
                title: 'Add Student',
                onTap: () => context.push('/documents'),
              ),

              QuickActionCard(
                icon: Icons.group_add,
                title: 'Add Teacher',
                onTap: () => context.push('/documents'),
              ),

              QuickActionCard(
                icon: Icons.payment,
                title: 'Payments',
                onTap: () => context.push('/documents'),
              ),

              QuickActionCard(
                icon: Icons.analytics,
                title: 'Reports',
                onTap: () => context.push('/documents'),
              ),
            ],
          ),

          const Gap(24),

          Text(
            'Recent Activity',
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),

          const Gap(12),

          const RecentActivityCard(
            icon: Icons.person_add,
            title: '20 new students registered',
            subtitle: 'Today',
          ),

          const RecentActivityCard(
            icon: Icons.check_circle,
            title: 'Teacher attendance completed',
            subtitle: 'Today',
          ),

          const RecentActivityCard(
            icon: Icons.attach_money,
            title: 'Payment received',
            subtitle: 'Yesterday',
          ),
        ],
      ),
    );
  }

  Widget _revenueCard() {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: const Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Total Monthly Revenue', style: TextStyle(fontSize: 15)),

            Gap(10),

            Text(
              '\$37,700',
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            ),

            Gap(8),

            Text('↑ 12% growth compared to last month'),
          ],
        ),
      ),
    );
  }

  Widget _businessCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required String value,
  }) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(child: Icon(icon)),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
