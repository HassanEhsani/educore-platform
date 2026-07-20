import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

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
          GestureDetector(
            onTap: () => context.push('/profile'),
            child: StudentHeader(student: FakeStudentData.student),
          ),

          const Gap(AppSpacing.lg),

          Text('Quick Actions', style: Theme.of(context).textTheme.titleLarge),

          const Gap(AppSpacing.md),

          Wrap(
            spacing: AppSpacing.md,
            runSpacing: AppSpacing.md,
            children: [
              SizedBox(
                width: 160,
                child: QuickActionCard(
                  icon: Icons.grade,
                  title: 'Grades',
                  onTap: () => context.push('/documents'),
                ),
              ),
              SizedBox(
                width: 160,
                child: QuickActionCard(
                  icon: Icons.calendar_month,
                  title: 'Schedule',
                  onTap: () => context.push('/calendar'),
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
                child: QuickActionCard(
                  icon: Icons.payments,
                  title: 'Tuition',
                  onTap: () => context.push('/documents'),
                ),
              ),
            ],
          ),

          const Gap(AppSpacing.xl),

          Text('Learning', style: Theme.of(context).textTheme.titleLarge),

          const Gap(AppSpacing.md),

          DashboardCard(
            icon: Icons.menu_book,
            title: 'Learning Materials',
            subtitle: 'Books and homework',
            onTap: () => context.push('/documents'),
          ),

          DashboardCard(
            icon: Icons.fact_check,
            title: 'Attendance',
            subtitle: 'View attendance history',
            onTap: () => context.push('/attendance'),
          ),

          DashboardCard(
            icon: Icons.campaign,
            title: 'Announcements',
            subtitle: 'Latest school news',
            onTap: () => context.push('/messages'),
          ),
        ],
      ),
    );
  }
}
