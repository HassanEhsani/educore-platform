import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/theme/app_spacing.dart';
import '../data/fake_manager_data.dart';
import 'widgets/manager_action_card.dart';
import 'widgets/manager_header.dart';
import 'widgets/statistics_card.dart';
import 'package:go_router/go_router.dart';

class ManagerDashboardBody extends StatelessWidget {
  const ManagerDashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ManagerHeader(manager: demoManager),
          Text('Quick Actions', style: Theme.of(context).textTheme.titleLarge),

          const Gap(AppSpacing.md),

          const Gap(AppSpacing.lg),

          Wrap(
            spacing: AppSpacing.md,
            runSpacing: AppSpacing.md,
            children: [
              SizedBox(
                width: 160,
                child: ManagerActionCard(
                  icon: Icons.people,
                  title: 'Teachers',
                  onTap: () {},
                ),
              ),
              SizedBox(
                width: 160,
                child: ManagerActionCard(
                  icon: Icons.school,
                  title: 'Students',
                  onTap: () {},
                ),
              ),
              SizedBox(
                width: 160,
                child: ManagerActionCard(
                  icon: Icons.notifications,
                  title: 'Notifications',
                  onTap: () => context.push('/notifications'),
                ),
              ),
              SizedBox(
                width: 160,
                child: ManagerActionCard(
                  icon: Icons.analytics,
                  title: 'Reports',
                  onTap: () {},
                ),
              ),
              SizedBox(
                width: 160,
                child: ManagerActionCard(
                  icon: Icons.settings,
                  title: 'Settings',
                  onTap: () {},
                ),
              ),
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
            value: '${demoManager.teachers}',
          ),

          StatisticsCard(
            icon: Icons.school,
            title: 'Students',
            value: '${demoManager.students}',
          ),

          StatisticsCard(
            icon: Icons.class_,
            title: 'Classes',
            value: '${demoManager.classes}',
          ),

          StatisticsCard(
            icon: Icons.fact_check,
            title: 'Attendance',
            value: '${demoManager.attendanceRate}%',
          ),
        ],
      ),
    );
  }
}
