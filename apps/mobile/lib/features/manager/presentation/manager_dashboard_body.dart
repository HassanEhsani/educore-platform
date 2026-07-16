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

          const Gap(AppSpacing.lg),

          Row(
            children: [
              Expanded(
                child: ManagerActionCard(
                  icon: Icons.people,
                  title: 'Teachers',
                  onTap: () {},
                ),
              ),
              Expanded(
                child: ManagerActionCard(
                  icon: Icons.notifications,
                  title: 'Notifications',
                  onTap: () => context.push('/notifications'),
                ),
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: ManagerActionCard(
                  icon: Icons.school,
                  title: 'Students',
                  onTap: () {},
                ),
              ),
            ],
          ),

          const Gap(AppSpacing.md),

          Row(
            children: [
              Expanded(
                child: ManagerActionCard(
                  icon: Icons.analytics,
                  title: 'Reports',
                  onTap: () {},
                ),
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: ManagerActionCard(
                  icon: Icons.settings,
                  title: 'Settings',
                  onTap: () {},
                ),
              ),
            ],
          ),

          const Gap(AppSpacing.xl),

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
