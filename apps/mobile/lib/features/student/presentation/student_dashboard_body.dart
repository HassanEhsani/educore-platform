import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/theme/app_spacing.dart';
import '../data/fake_student_data.dart';
import 'widgets/dashboard_card.dart';
import 'widgets/quick_action_card.dart';
import 'widgets/student_header.dart';

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

          Row(
            children: const [
              Expanded(
                child: QuickActionCard(icon: Icons.grade, title: 'Grades'),
              ),
              SizedBox(width: AppSpacing.md),
              Expanded(
                child: QuickActionCard(
                  icon: Icons.calendar_month,
                  title: 'Schedule',
                ),
              ),
            ],
          ),

          const Gap(AppSpacing.md),

          Row(
            children: const [
              Expanded(
                child: QuickActionCard(
                  icon: Icons.notifications,
                  title: 'News',
                ),
              ),
              SizedBox(width: AppSpacing.md),
              Expanded(
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
