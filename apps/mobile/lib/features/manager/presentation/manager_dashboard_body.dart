// lib/features/manager/presentation/manager_dashboard_body.dart

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/theme/app_spacing.dart';
import '../data/fake_manager_data.dart';
import '../data/manager_dashboard_data.dart';
import 'widgets/manager_header.dart';
import 'widgets/recent_activity_card.dart';
import 'widgets/statistics_card.dart';
import 'widgets/manager_revenue_card.dart';
import 'widgets/manager_business_card.dart';
import 'widgets/manager_quick_actions.dart';
import '../data/manager_activity_data.dart';

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

          ManagerRevenueCard(
            monthlyRevenue: summary.monthlyRevenue,
            growthPercentage: ManagerDashboardData.monthlyGrowth,
          ),

          const Gap(24),

          _sectionTitle(context, 'Business Overview'),

          const Gap(12),

          ManagerBusinessCard(
            icon: Icons.school,
            title: 'EduCore School',
            subtitle: '${summary.students} Students',
            revenue: ManagerDashboardData.schoolRevenue,
          ),

          ManagerBusinessCard(
            icon: Icons.wifi,
            title: 'EduCore ISP',
            subtitle: '${ManagerDashboardData.ispUsers} Users',
            revenue: ManagerDashboardData.ispRevenue,
          ),

          ManagerBusinessCard(
            icon: Icons.biotech,
            title: 'Laboratory',
            subtitle: '${ManagerDashboardData.laboratoryTests} Tests',
            revenue: ManagerDashboardData.laboratoryRevenue,
          ),

          const Gap(24),

          _sectionTitle(context, 'Performance'),

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

          _sectionTitle(context, 'Quick Actions'),

          const Gap(12),

          const ManagerQuickActions(),

          const Gap(24),

          _sectionTitle(context, 'Recent Activity'),

          const Gap(12),

          ...ManagerActivityData.activities.map(
            (activity) => RecentActivityCard(
              icon: activity.icon,
              title: activity.title,
              subtitle: activity.subtitle,
            ),
          ),
        ],
      ),
    );
  }

  Widget _sectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(
        context,
      ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
    );
  }
}
