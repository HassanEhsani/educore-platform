import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/dashboard/dashboard_welcome_card.dart';

import '../data/manager_activity_data.dart';
import '../data/datasources/manager_dashboard_datasource.dart';
import '../data/repositories/manager_repository_impl.dart';

import '../domain/entities/manager_dashboard.dart';

import 'widgets/manager_quick_actions.dart';
import 'widgets/manager_revenue_card.dart';
import 'widgets/recent_activity_card.dart';
import 'widgets/statistics_card.dart';

class ManagerDashboardBody extends StatelessWidget {
  const ManagerDashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    final repository = ManagerRepositoryImpl(
      datasource: ManagerDashboardDataSource(),
    );

    return FutureBuilder<ManagerDashboard>(
      future: repository.getDashboard(),

      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return Center(child: Text(snapshot.error.toString()));
        }

        final dashboard = snapshot.data!;

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

                      value: '${dashboard.attendance}%',
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
                  children: ManagerActivityData.activities.map((activity) {
                    return RecentActivityCard(
                      icon: activity.icon,

                      title: activity.title,

                      subtitle: activity.subtitle,
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
