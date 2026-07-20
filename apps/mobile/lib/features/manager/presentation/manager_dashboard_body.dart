// lib/features/manager/presentation/manager_dashboard_body.dart

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/app_spacing.dart';
import '../data/fake_manager_data.dart';
import '../data/manager_dashboard_data.dart';
import 'widgets/manager_action_card.dart';
import 'widgets/manager_header.dart';
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
          GestureDetector(
            onTap: () => context.push('/profile'),
            child: const ManagerHeader(manager: demoManager),
          ),

          const Gap(AppSpacing.xl),

          Text(
            'Business Overview',
            style: Theme.of(context).textTheme.titleLarge,
          ),

          const Gap(AppSpacing.md),

          _businessOverviewCard(summary),

          const Gap(AppSpacing.xl),

          Text('Quick Actions', style: Theme.of(context).textTheme.titleLarge),

          const Gap(AppSpacing.md),

          Wrap(
            spacing: AppSpacing.md,
            runSpacing: AppSpacing.md,
            children: [
              _actionCard(context, Icons.people, 'Teachers', '/documents'),
              _actionCard(context, Icons.school, 'Students', '/documents'),
              _actionCard(
                context,
                Icons.notifications,
                'Notifications',
                '/notifications',
              ),
              _actionCard(context, Icons.analytics, 'Reports', '/documents'),
              _actionCard(context, Icons.settings, 'Settings', '/settings'),
            ],
          ),

          const Gap(AppSpacing.xl),

          Text(
            'School Statistics',
            style: Theme.of(context).textTheme.titleLarge,
          ),

          const Gap(AppSpacing.md),

          StatisticsCard(
            icon: Icons.people,
            title: 'Teachers',
            value: '${summary.teachers}',
          ),

          StatisticsCard(
            icon: Icons.school,
            title: 'Students',
            value: '${summary.students}',
          ),

          StatisticsCard(
            icon: Icons.attach_money,
            title: 'Monthly Revenue',
            value: '\$${summary.monthlyRevenue.toStringAsFixed(0)}',
          ),

          StatisticsCard(
            icon: Icons.fact_check,
            title: 'Attendance',
            value: '${summary.attendance.toStringAsFixed(0)}%',
          ),
        ],
      ),
    );
  }

  Widget _businessOverviewCard(dynamic summary) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _summaryItem(
              'Revenue',
              '\$${summary.monthlyRevenue.toStringAsFixed(0)}',
            ),
            _summaryItem('Students', '${summary.students}'),
            _summaryItem('Teachers', '${summary.teachers}'),
          ],
        ),
      ),
    );
  }

  Widget _summaryItem(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        const Gap(AppSpacing.xs),
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _actionCard(
    BuildContext context,
    IconData icon,
    String title,
    String route,
  ) {
    return SizedBox(
      width: 160,
      child: ManagerActionCard(
        icon: icon,
        title: title,
        onTap: () => context.push(route),
      ),
    );
  }
}
