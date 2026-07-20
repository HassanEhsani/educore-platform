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

          _revenueHero(context),

          const Gap(24),

          Text(
            'Business Overview',
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),

          const Gap(12),

          _businessTile(
            context,
            Icons.school,
            'School',
            '1250 Students',
            '\$25,000',
          ),

          _businessTile(context, Icons.wifi, 'ISP', '430 Users', '\$8,500'),

          _businessTile(
            context,
            Icons.biotech,
            'Laboratory',
            '320 Tests',
            '\$4,200',
          ),

          const Gap(24),

          Text(
            'Performance',
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
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
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
            subtitle: 'Today 10:30',
          ),

          const RecentActivityCard(
            icon: Icons.payment,
            title: 'Monthly payment received',
            subtitle: 'Today 09:15',
          ),

          const RecentActivityCard(
            icon: Icons.check_circle,
            title: 'Teacher attendance completed',
            subtitle: 'Yesterday',
          ),
        ],
      ),
    );
  }

  Widget _revenueHero(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const Text('Total Monthly Revenue'),

          const Gap(8),

          Text(
            '\$37,700',
            style: Theme.of(
              context,
            ).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
          ),

          const Gap(8),

          const Text('↑ 12% growth compared to last month'),
        ],
      ),
    );
  }

  Widget _businessTile(
    BuildContext context,
    IconData icon,
    String title,
    String subtitle,
    String value,
  ) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(child: Icon(icon)),

        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),

        subtitle: Text(subtitle),

        trailing: Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
