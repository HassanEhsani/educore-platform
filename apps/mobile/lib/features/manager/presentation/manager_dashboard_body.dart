import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/dashboard/dashboard_welcome_card.dart';

import '../data/fake_manager_data.dart';
import '../data/manager_activity_data.dart';
import '../data/manager_dashboard_data.dart';

import 'widgets/manager_quick_actions.dart';
import 'widgets/manager_revenue_card.dart';
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
          DashboardWelcomeCard(
            name: demoManager.name,
            role: 'School Manager',
            description:
                'Manage students, teachers, attendance and school operations.',
          ),

          const Gap(28),

          _DashboardSection(
            title: 'Financial Overview',
            child: ManagerRevenueCard(
              monthlyRevenue: summary.monthlyCollection,
              growthPercentage: ManagerDashboardData.monthlyGrowth,
            ),
          ),

          const Gap(28),

          _DashboardSection(
            title: 'School Overview',
            child: Column(
              children: [
                StatisticsCard(
                  icon: Icons.people_outline,
                  title: 'Students',
                  value: '${summary.students}',
                ),

                StatisticsCard(
                  icon: Icons.school_outlined,
                  title: 'Teachers',
                  value: '${summary.teachers}',
                ),

                StatisticsCard(
                  icon: Icons.fact_check_outlined,
                  title: 'Attendance',
                  value: '${summary.attendance}%',
                ),
              ],
            ),
          ),

          const Gap(28),

          _DashboardSection(
            title: 'Quick Actions',
            child: const ManagerQuickActions(),
          ),

          const Gap(28),

          _DashboardSection(
            title: 'Recent Activity',
            child: Column(
              children: ManagerActivityData.activities
                  .map(
                    (activity) => RecentActivityCard(
                      icon: activity.icon,
                      title: activity.title,
                      subtitle: activity.subtitle,
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
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

        const Gap(12),

        child,
      ],
    );
  }
}
