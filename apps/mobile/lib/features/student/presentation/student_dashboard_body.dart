import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/theme/app_spacing.dart';
import '../data/fake_student_data.dart';
import 'widgets/dashboard_card.dart';
import 'widgets/quick_action_card.dart';
import 'widgets/student_header.dart';
import 'package:go_router/go_router.dart';

class StudentDashboardBody extends StatelessWidget {
  const StudentDashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const StudentHeader(student: demoStudent),

          const Gap(AppSpacing.lg),

          Wrap(
            spacing: AppSpacing.md,
            runSpacing: AppSpacing.md,
            children: [
              SizedBox(
                width: 160,
                child: QuickActionCard(icon: Icons.grade, title: 'Grades'),
              ),
              SizedBox(
                width: 160,
                child: QuickActionCard(
                  icon: Icons.calendar_month,
                  title: 'Schedule',
                ),
              ),
              SizedBox(
                width: 160,
                child: QuickActionCard(
                  icon: Icons.notifications,
                  title: 'Notifications',
                  onTap: () => context.push('/notifications'),
                ),
              ),
              SizedBox(
                width: 160,
                child: QuickActionCard(icon: Icons.payments, title: 'Tuition'),
              ),
            ],
          ),
          const Gap(AppSpacing.xl),

          DashboardCard(
            icon: Icons.menu_book,
            title: 'Learning Materials',
            subtitle: 'Books, presentations and homework',
            onTap: () {},
          ),

          DashboardCard(
            icon: Icons.fact_check,
            title: 'Attendance',
            subtitle: 'View attendance history',
            onTap: () {},
          ),

          DashboardCard(
            icon: Icons.campaign,
            title: 'Announcements',
            subtitle: 'Latest school announcements',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
