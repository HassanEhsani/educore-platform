import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/dashboard/dashboard_welcome_card.dart';

import 'providers/manager_dashboard_provider.dart';

import 'widgets/dashboard_alert_card.dart';
import 'widgets/manager_quick_actions.dart';
import 'widgets/manager_revenue_card.dart';
import 'widgets/recent_activity_card.dart';
import 'widgets/statistics_card.dart';

class ManagerDashboardBody extends ConsumerWidget {
  const ManagerDashboardBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboardState = ref.watch(managerDashboardProvider);

    return dashboardState.when(
      loading: () {
        return const Center(child: CircularProgressIndicator());
      },

      error: (error, stackTrace) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(24),

            child: Column(
              mainAxisSize: MainAxisSize.min,

              children: [
                const Icon(Icons.error_outline, size: 48),

                const Gap(16),

                Text(error.toString(), textAlign: TextAlign.center),

                const Gap(16),

                FilledButton(
                  onPressed: () {
                    ref.invalidate(managerDashboardProvider);
                  },

                  child: const Text('Retry'),
                ),
              ],
            ),
          ),
        );
      },

      data: (dashboard) {
        return SingleChildScrollView(
          padding: const EdgeInsets.all(AppSpacing.lg),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              DashboardWelcomeCard(
                name: dashboard.managerName,

                role: 'School Manager',

                description:
                    'Manage students, teachers, attendance and school operations.',
              ),

              const Gap(28),

              _DashboardSection(
                title: 'Financial Overview',

                child: ManagerRevenueCard(
                  monthlyRevenue: dashboard.monthlyRevenue,

                  growthPercentage: dashboard.growth,
                ),
              ),

              const Gap(28),

              _DashboardSection(
                title: 'Alerts',

                child: Column(
                  children: dashboard.alerts.map((alert) {
                    return DashboardAlertCard(alert: alert);
                  }).toList(),
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

                      value: dashboard.students.toString(),
                    ),

                    StatisticsCard(
                      icon: Icons.school_outlined,

                      title: 'Teachers',

                      value: dashboard.teachers.toString(),
                    ),

                    StatisticsCard(
                      icon: Icons.fact_check_outlined,

                      title: 'Attendance',

                      value: '${dashboard.attendance.toStringAsFixed(1)}%',
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
                  children: dashboard.activities.map((activity) {
                    return RecentActivityCard(
                      icon: Icons.history,

                      title: activity.title,

                      subtitle: activity.description,
                    );
                  }).toList(),
                ),
              ),

              const Gap(28),

              _DashboardSection(
                title: 'Notifications',

                child: Column(
                  children: dashboard.notifications.map((notification) {
                    return ListTile(
                      contentPadding: EdgeInsets.zero,

                      leading: const Icon(Icons.notifications_outlined),

                      title: Text(notification.title),

                      subtitle: Text(notification.message),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        );
      },
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
