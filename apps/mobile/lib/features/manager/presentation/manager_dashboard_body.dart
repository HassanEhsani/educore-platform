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

          _revenueCard(context),

          const Gap(24),

          _sectionTitle(context, 'Business Overview'),

          const Gap(12),

          _businessCard(
            context,
            Icons.school,
            'EduCore School',
            '1250 Students',
            ManagerDashboardData.schoolRevenue,
          ),

          _businessCard(
            context,
            Icons.wifi,
            'EduCore ISP',
            '${ManagerDashboardData.ispUsers} Users',
            ManagerDashboardData.ispRevenue,
          ),

          _businessCard(
            context,
            Icons.biotech,
            'Laboratory',
            '${ManagerDashboardData.laboratoryTests} Tests',
            ManagerDashboardData.laboratoryRevenue,
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

          _sectionTitle(context, 'Recent Activity'),

          const Gap(12),

          const RecentActivityCard(
            icon: Icons.person_add,
            title: '20 new students registered',
            subtitle: 'Today • 10:30 AM',
          ),

          const RecentActivityCard(
            icon: Icons.payment,
            title: 'Monthly payment received',
            subtitle: 'Today • 09:15 AM',
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

  Widget _sectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(
        context,
      ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
    );
  }

  Widget _revenueCard(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: colors.primaryContainer,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Monthly Revenue'),

          const Gap(8),

          Text(
            '\$37,700',
            style: Theme.of(
              context,
            ).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
          ),

          const Gap(8),

          const Text('↑ 12% growth compared to previous month'),
        ],
      ),
    );
  }

  Widget _businessCard(
    BuildContext context,
    IconData icon,
    String title,
    String subtitle,
    double revenue,
  ) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: CircleAvatar(
          backgroundColor: colors.primaryContainer,
          child: Icon(icon, color: colors.primary),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: Text(
          '\$${revenue.toStringAsFixed(0)}',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
